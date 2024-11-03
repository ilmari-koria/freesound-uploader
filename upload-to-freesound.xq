xquery version "3.1";
(:~
 : upload-to-freesound.xq
 : dependencies `xdg-open`,`basex`
 : @author ilmarikoria@posteo.net
 : @version 0.1
 : -> Apply for API creds via `https://freesound.org/apiv2/apply`
 : TODO client secrets as external crypto file (use basex)
 : TODO add basex webapp password from file
 :)
declare variable $file-client-id as xs:string := file:resolve-path("../../secret/clientid");
declare function local:open-authorisation-url() {
  let $client-id := file:read-text($file-client-id, "UTF-8")
  let $url := "https://freesound.org/apiv2/oauth2/authorize/?client_id=" || $client-id || "&amp;response_type=code&amp;state=xyz"
  let $xdg-open := "xdg-open"
  return proc:system($xdg-open, $url)
};
local:open-authorisation-url()
