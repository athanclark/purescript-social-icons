module React.DOM.SocialIcons
  ( socialIcon, SocialIconProps, SocialIconPropsO
  , socialIcons, SocialIconsProps, SocialIconsPropsO
  , Network
  , fivehundredpix
  , bandsintown
  , behance
  , codepen
  , dribble
  , dropbox
  , email
  , facebook
  , flickr
  , foursquare
  , github
  , googlePlay
  , google
  , instagram
  , itunes
  , linkedin
  , medium
  , meetup
  , pinterest
  , rdio
  , rss
  , sharethis
  , smugmug
  , snapchat
  , soundcloud
  , spotify
  , squarespace
  , tumblr
  , twitch
  , twitter
  , vevo
  , vimeo
  , vine
  , vk
  , vsco
  , whatsapp
  , yelp
  , youtube
  ) where

import React (ReactClass, ReactElement, createElement)
import Data.Record.Class (class Subrow)


foreign import socialIconImpl :: forall props. ReactClass props

type SocialIconProps o =
  { url :: String
  | o
  }

type SocialIconPropsO =
  ( network :: Network
  , color :: String
  , style :: forall styles. { | styles }
  )

socialIcon :: forall o
            . Subrow o SocialIconPropsO
           => SocialIconProps o -> ReactElement
socialIcon props = createElement socialIconImpl props []

newtype Network = Network String

fivehundredpix = Network "fivehundredpix"
bandsintown = Network "bandsintown"
behance = Network "behance"
codepen = Network "codepen"
dribble = Network "dribble"
dropbox = Network "dropbox"
email = Network "email"
facebook = Network "facebook"
flickr = Network "flickr"
foursquare = Network "foursquare"
github = Network "github"
googlePlay = Network "google_play"
google = Network "google"
instagram = Network "instagram"
itunes = Network "itunes"
linkedin = Network "linkedin"
medium = Network "medium"
meetup = Network "meetup"
pinterest = Network "pinterest"
rdio = Network "rdio"
rss = Network "rss"
sharethis = Network "sharethis"
smugmug = Network "smugmug"
snapchat = Network "snapchat"
soundcloud = Network "soundcloud"
spotify = Network "spotify"
squarespace = Network "squarespace"
tumblr = Network "tumblr"
twitch = Network "twitch"
twitter = Network "twitter"
vevo = Network "vevo"
vimeo = Network "vimeo"
vine = Network "vine"
vk = Network "vk"
vsco = Network "vsco"
whatsapp = Network "whatsapp"
yelp = Network "yelp"
youtube = Network "youtube"

foreign import socialIconsImpl :: forall props. ReactClass props

type SocialIconsProps o =
  { urls :: Array String
  | o
  }

type SocialIconsPropsO =
  ( color :: String
  , style :: forall styles. { | styles }
  )

socialIcons :: forall o
             . Subrow o SocialIconsPropsO
            => SocialIconsProps o -> ReactElement
socialIcons props = createElement socialIconsImpl props []
