module Web.View.Posts.Show where
import Web.View.Prelude

import qualified Text.MMark as MMark

newtype ShowView = ShowView { post :: Post }

instance View ShowView where
    html ShowView { .. } = [hsx|
        <nav>
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href={PostsAction}>Posts</a></li>
                <li class="breadcrumb-item active">Show Post</li>
            </ol>
        </nav>
        <h1>{get #title post}</h1>
        <p>{get #createdAt post |> timeAgo }</p>
        <p>{forEach body line}</p>
        <a href={PostsAction}>go back</a>
    |]
        where
            line x = x
            body = map renderMarkdown (lines $ get #body post)
            renderMarkdown text =
                case text |> MMark.parse "" of
                    Left error -> "Something went wrong"
                    Right markdown -> MMark.render markdown |> tshow |> preEscapedToHtml

