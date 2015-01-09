# Localization Project for Photo Info (iOS Tweak)

Localization project for my jailbreak tweak [Photo Info](http://cydia.saurik.com/package/org.thebigboss.photoinfo/).

Photo Info is an enhancement for iOS's builtin Photos/Camera app. It allows user to view the info of photo within the Photos/Camera app, such as EXIF, GPS and more.

Compatible with iOS 5, 6, 7 and 8

## Note

As Photos/Camera app uses different rules to locate strings file for some languages in different iOS versions, each pair of folder below actually contains the same ```PhotoInfo.strings``` file. The duplicate one will be removed automatically by the [PhotoInfoTool](https://github.com/wangyandong-ningxia/photoinfo-localization/blob/master/Tool/PhotoInfoTool.m) when installing Photo Info. It's no big deal for now but it's not a good idea to put duplicate files in a single ```deb``` package. It will be resolved in the next major release of Photo Info via post-install script.

 <table>
  <tr>
    <td>English.lproj</td>
    <td>en.lproj</td>
  </tr>
  <tr>
    <td>Italian.lproj</td>
    <td>it.lproj</td>
  </tr>
  <tr>
    <td>Japanese.lproj</td>
    <td>ja.lproj</td>
  </tr>
  <tr>
    <td>German.lproj</td>
    <td>de.lproj</td>
  </tr>
</table>



## Credits

| Language | Translator  |
| ---------|:-------------|
| English | Wang Yandong |
| 简体中文 / Simplified Chinese | Wang Yandong |
| 繁體中文 / Traditional Chinese | Wang Yandong |
| Deutsch / German | Christoph Parstorfer |
| Italiano / Italian | Marco Marinoni |
| 日本語 / Japanese | Joe Elkins |
| 한국의 / Korean | ssut (SuHun Han) |
| Türkçe / Turkish | Evrim Altay KOLUAÇIK |
| Norsk bokmål / Norwegian Bokmål | Eivind H. Bratterud |
| Español / Spanish | Jordi Rius |
| Català / Catalan | Jordi Rius |
