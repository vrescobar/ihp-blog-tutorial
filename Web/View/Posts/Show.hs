module Web.View.Posts.Show where
import Web.View.Prelude

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
        <p>{forEach body line}</p>
        <a href={PostsAction}>go back</a>
    |]
        where
            body = lines $ get #body post
            line x = [hsx|{x}<br/>|]
