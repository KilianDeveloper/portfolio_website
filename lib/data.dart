import 'package:flutter_web_test/model/brand.dart';
import 'package:flutter_web_test/model/brandcollection.dart';
import 'package:flutter_web_test/model/platform.dart';
import 'package:flutter_web_test/model/project.dart';
import 'package:flutter_web_test/model/sourcecoderepository.dart';

const List<BrandCollection> myBrandCollections = [
  BrandCollection(name: "Mobile/Web-Development", collection: [Brand.flutter]),
  BrandCollection(name: "Backend-Development", collection: [
    Brand.spring,
    Brand.nodejs,
  ]),
  BrandCollection(name: "Deployment", collection: [
    Brand.git,
    Brand.docker,
    Brand.firebase,
  ]),
  BrandCollection(name: "Design/Prototyping", collection: [
    Brand.figma,
  ])
];

const List<Brand> myFindMeBrands = [
  Brand.linkedin,
  Brand.github,
];

const List<Project> myProjects = [
  Project(
      name: "trainIt: Workout Planner",
      description:
          "A mobile application to track your own progress. You can plan your entire workout routine through the week and save all necessary information in your training-plan. You can also track personal bests as your fastest time in 100m running, set your own goals and measure your body values over the time. I created this app entirely by myself from scratch. By far my most favorite project.",
      imageResourcePaths: [
        "assets/trainit/1_calendar.png",
        "assets/trainit/2_account.png",
        "assets/trainit/3_training_preview.png",
        "assets/trainit/4_statistics.png",
        "assets/trainit/5_edit_training_plan.png",
        "assets/trainit/6_dark_mode.png",
      ],
      iconResourcePath: "assets/trainit/icon.png",
      techStack: [
        Brand.flutter,
        Brand.nodejs,
        Brand.docker,
        Brand.figma,
        Brand.firebase,
        Brand.git,
      ],
      platforms: [
        RuntimePlatform.iOS,
        RuntimePlatform.android,
      ],
      sources: [
        SourceCodeRepository(
          provider: Brand.github,
          name: "Frontend",
          url: "https://github.com/KilianDeveloper/trainit-frontend",
        ),
        SourceCodeRepository(
          provider: Brand.github,
          name: "Backend",
          url: "https://github.com/KilianDeveloper/trainit-backend",
        )
      ])
];

const privacyText = """
Diese Datenschutzerklärung soll die Nutzer dieser Website über die Art, den Umfang und den Zweck der Erhebung und Verwendung personenbezogener Daten durch den Websitebetreiber Kilian-Dev informieren.

Der Websitebetreiber nimmt Ihren Datenschutz sehr ernst und behandelt Ihre personenbezogenen Daten vertraulich und entsprechend der gesetzlichen Vorschriften. Da durch neue Technologien und die ständige Weiterentwicklung dieser Webseite Änderungen an dieser Datenschutzerklärung vorgenommen werden können, empfehlen wir Ihnen sich die Datenschutzerklärung in regelmäßigen Abständen wieder durchzulesen.

Definitionen der verwendeten Begriffe (z.B. “personenbezogene Daten” oder “Verarbeitung”) finden Sie in Art. 4 DSGVO.

Zugriffsdaten

Wir, der Websitebetreiber bzw. Seitenprovider, erheben aufgrund unseres berechtigten Interesses (s. Art. 6 Abs. 1 lit. f. DSGVO) Daten über Zugriffe auf die Website und speichern diese als „Server-Logfiles“ auf dem Server der Website ab. Folgende Daten werden so protokolliert:

Besuchte Website
Uhrzeit zum Zeitpunkt des Zugriffes
Menge der gesendeten Daten in Byte
Quelle/Verweis, von welchem Sie auf die Seite gelangten
Verwendeter Browser
Verwendetes Betriebssystem
Verwendete IP-Adresse
Die Server-Logfiles werden für maximal 7 Tage gespeichert und anschließend gelöscht. Die Speicherung der Daten erfolgt aus Sicherheitsgründen, um z. B. Missbrauchsfälle aufklären zu können. Müssen Daten aus Beweisgründen aufgehoben werden, sind sie solange von der Löschung ausgenommen bis der Vorfall endgültig geklärt ist.

Reichweitenmessung & Cookies

Diese Website verwendet Cookies zur pseudonymisierten Reichweitenmessung, die entweder von unserem Server oder dem Server Dritter an den Browser des Nutzers übertragen werden. Bei Cookies handelt es sich um kleine Dateien, welche auf Ihrem Endgerät gespeichert werden. Ihr Browser greift auf diese Dateien zu. Durch den Einsatz von Cookies erhöht sich die Benutzerfreundlichkeit und Sicherheit dieser Website.

Falls Sie nicht möchten, dass Cookies zur Reichweitenmessung auf Ihrem Endgerät gespeichert werden, können Sie dem Einsatz dieser Dateien hier widersprechen:

Cookie-Deaktivierungsseite der Netzwerkwerbeinitiative: http://optout.networkadvertising.org/?c=1#!/
Cookie-Deaktivierungsseite der US-amerikanischen Website: http://optout.aboutads.info/?c=2#!/
Cookie-Deaktivierungsseite der europäischen Website: http://optout.networkadvertising.org/?c=1#!/
Gängige Browser bieten die Einstellungsoption, Cookies nicht zuzulassen. Hinweis: Es ist nicht gewährleistet, dass Sie auf alle Funktionen dieser Website ohne Einschränkungen zugreifen können, wenn Sie entsprechende Einstellungen vornehmen.

Erfassung und Verarbeitung personenbezogener Daten

Der Websitebetreiber erhebt, nutzt und gibt Ihre personenbezogenen Daten nur dann weiter, wenn dies im gesetzlichen Rahmen erlaubt ist oder Sie in die Datenerhebung einwilligen.

Als personenbezogene Daten gelten sämtliche Informationen, welche dazu dienen, Ihre Person zu bestimmen und welche zu Ihnen zurückverfolgt werden können – also beispielsweise Ihr Name, Ihre E-Mail-Adresse und Telefonnummer.

Diese Website können Sie auch besuchen, ohne Angaben zu Ihrer Person zu machen. Zur Verbesserung unseres Online-Angebotes speichern wir jedoch (ohne Personenbezug) Ihre Zugriffsdaten auf diese Website. Zu diesen Zugriffsdaten gehören z. B. die von Ihnen angeforderte Datei oder der Name Ihres Internet-Providers. Durch die Anonymisierung der Daten sind Rückschlüsse auf Ihre Person nicht möglich.

Personenbezogene Daten, Wie Namen, Anschriften, Mail-Adressen und IP-Adressen werden durch den Webseitenanbieter lediglich zum Zweck von Bestellverarbeitungen und zur Marktforschung erhoben. Die daten werden außschließlich im DBMS des Internetprovider gespeichert.

Umgang mit Kontaktdaten

Nehmen Sie mit uns als Websitebetreiber durch die angebotenen Kontaktmöglichkeiten Verbindung auf, werden Ihre Angaben gespeichert, damit auf diese zur Bearbeitung und Beantwortung Ihrer Anfrage zurückgegriffen werden kann. Ohne Ihre Einwilligung werden diese Daten nicht an Dritte weitergegeben.

Umgang mit Kommentaren und Beiträgen

Hinterlassen Sie auf dieser Website einen Beitrag oder Kommentar, wird Ihre IP-Adresse gespeichert. Dies erfolgt aufgrund unserer berechtigten Interessen im Sinne des Art. 6 Abs. 1 lit. f. DSGVO und dient der Sicherheit von uns als Websitebetreiber: Denn sollte Ihr Kommentar gegen geltendes Recht verstoßen, können wir dafür belangt werden, weshalb wir ein Interesse an der Identität des Kommentar- bzw. Beitragsautors haben.

Google Analytics

Diese Website nutzt aufgrund unserer berechtigten Interessen zur Optimierung und Analyse unseres Online-Angebots im Sinne des Art. 6 Abs. 1 lit. f. DSGVO den Dienst „Google Analytics“, welcher von der Google Inc. (1600 Amphitheatre Parkway Mountain View, CA 94043, USA) angeboten wird. Der Dienst (Google Analytics) verwendet „Cookies“ – Textdateien, welche auf Ihrem Endgerät gespeichert werden. Die durch die Cookies gesammelten Informationen werden im Regelfall an einen Google-Server in den USA gesandt und dort gespeichert.

Google LLC hält das europäische Datenschutzrecht ein und ist unter dem Privacy-Shield-Abkommen zertifiziert:
https://www.privacyshield.gov/participant?id=a2zt000000001L5AAI&status=Active

Auf dieser Website greift die IP-Anonymisierung. Die IP-Adresse der Nutzer wird innerhalb der Mitgliedsstaaten der EU und des Europäischen Wirtschaftsraum und in den anderen Vertragsstaaten des Abkommens gekürzt. Nur in Einzelfällen wird die IP-Adresse zunächst ungekürzt in die USA an einen Server von Google übertragen und dort gekürzt. Durch diese Kürzung entfällt der Personenbezug Ihrer IP-Adresse. Die vom Browser übermittelte IP-Adresse des Nutzers wird nicht mit anderen von Google gespeicherten Daten kombiniert.

Im Rahmen der Vereinbarung zur Auftragsdatenvereinbarung, welche wir als Websitebetreiber mit der Google Inc. geschlossen haben, erstellt diese mithilfe der gesammelten Informationen eine Auswertung der Websitenutzung und der Websiteaktivität und erbringt mit der Internetnutzung verbundene Dienstleistungen.

Die von Google in unserem Auftrag erhobenen Daten werden genutzt, um die Nutzung unseres Online-Angebots durch die einzelnen Nutzer auswerten zu können, z. B. um Reports über die Aktivität auf der Website zu erstellen, um unser Online-Angebot zu verbessern.

Sie haben die Möglichkeit, die Speicherung der Cookies auf Ihrem Gerät zu verhindern, indem Sie in Ihrem Browser entsprechende Einstellungen vornehmen. Es ist nicht gewährleistet, dass Sie auf alle Funktionen dieser Website ohne Einschränkungen zugreifen können, wenn Ihr Browser keine Cookies zulässt.

Weiterhin können Sie durch ein Browser-Plugin verhindern, dass die durch Cookies gesammelten Informationen (inklusive Ihrer IP-Adresse) an die Google Inc. gesendet und von der Google Inc. genutzt werden. Folgender Link führt Sie zu dem entsprechenden Plugin:
https://tools.google.com/dlpage/gaoptout?hl=de

Alternativ verhindern Sie mit einem Klick auf diesen Link (WICHTIG: Opt-Out-Link einfügen), dass Google Analytics innerhalb dieser Website Daten über Sie erfasst. Mit dem Klick auf obigen Link laden Sie ein „Opt-Out-Cookie“ herunter. Ihr Browser muss die Speicherung von Cookies also hierzu grundsätzlich erlauben. Löschen Sie Ihre Cookies regelmäßig, ist ein erneuter Klick auf den Link bei jedem Besuch dieser Website vonnöten.

Hier finden Sie weitere Informationen zur Datennutzung durch die Google Inc.:

https://policies.google.com/privacy/partners?hl=de (Daten, die von Google-Partnern erhoben werden)
https://adssettings.google.de/authenticated (Einstellungen über Werbung, die Ihnen angezeigt wird)
https://policies.google.com/technologies/ads?hl=de (Verwendung von Cookies in Anzeigen)
Rechte des Nutzers

Sie haben als Nutzer das Recht, auf Antrag eine kostenlose Auskunft darüber zu erhalten, welche personenbezogenen Daten über Sie gespeichert wurden. Sie haben außerdem das Recht auf Berichtigung falscher Daten und auf die Verarbeitungseinschränkung oder Löschung Ihrer personenbezogenen Daten. Falls zutreffend, können Sie auch Ihr Recht auf Datenportabilität geltend machen. Sollten Sie annehmen, dass Ihre Daten unrechtmäßig verarbeitet wurden, können Sie eine Beschwerde bei der zuständigen Aufsichtsbehörde einreichen.

Löschung von Daten

Sofern Ihr Wunsch nicht mit einer gesetzlichen Pflicht zur Aufbewahrung von Daten (z. B. Vorratsdatenspeicherung) kollidiert, haben Sie ein Anrecht auf Löschung Ihrer Daten. Von uns gespeicherte Daten werden, sollten sie für ihre Zweckbestimmung nicht mehr vonnöten sein und es keine gesetzlichen Aufbewahrungsfristen geben, gelöscht. Falls eine Löschung nicht durchgeführt werden kann, da die Daten für zulässige gesetzliche Zwecke erforderlich sind, erfolgt eine Einschränkung der Datenverarbeitung. In diesem Fall werden die Daten gesperrt und nicht für andere Zwecke verarbeitet.

Widerspruchsrecht

Nutzer dieser Webseite können von ihrem Widerspruchsrecht Gebrauch machen und der Verarbeitung ihrer personenbezogenen Daten zu jeder Zeit widersprechen.

Wenn Sie eine Berichtigung, Sperrung, Löschung oder Auskunft über die zu Ihrer Person gespeicherten personenbezogenen Daten wünschen oder Fragen bzgl. der Erhebung, Verarbeitung oder Verwendung Ihrer personenbezogenen Daten haben oder erteilte Einwilligungen widerrufen möchten, wenden Sie sich bitte an folgende E-Mail-Adresse: kilian-dev.de
""";

const termsOfUsageText = """
Angaben gemäß § 5 TMG:

Kilian Markgraf
An der Kucksche 8
01328 Dresden

Kontakt:
E-Mail: info@kilian-dev.de
AGB

Allgemeine Geschäftsbedingungen
für den Bereich Discord Server Control

Veröffentlicht am 03. Juli 2022

§ 1 Geltung der Bedingungen und Vertragsgegenstand 

Die Software von Kilian Markgraf (Kilian-Dev.de) wird ausschließlich aufgrund dieser Geschäftsbedingungen zur Verfügung gestellt. Spätestens mit dem Download der Software gelten diese Bedingungen als angenommen.

§ 2 Besondere Eigenverantwortlichkeit des Kunden

2.1. Softwaretest
Der Kunde muss vor dem Kauf der Software testen, ob die Software auf seinem Computer oder seinen Computern ordnungsgemäß funktioniert, oder ob Inkompatibilitäten auftreten, die zu einer gänzlichen oder teilweisen Fehlfunktion der Software führen. Aufgrund der Vielfalt der verschiedenen Computerarten, Gerätetreibern, Betriebssystemversionen sowie Betriebssystemsprachen und Versionen kann die Einsatzfähigkeit dieses Programms nicht auf jedem System garantiert werden - auch nicht auf Systemen, die eigentlich die angegebenen Anforderungen der Software erfüllen. Ebenfalls können Inkompatibilitäten mit bestimmten Computerdateien oder Teilen daraus bestehen.

Es ist Sache des Kunden, das Programm in Betrieb zu nehmen. Der Hersteller Kilian Markgraf (Kilian-Dev.de) ist bereit, den Kunden dabei unentgeltlich per Email zu unterstützen und zu versuchen, evtl. auftretende Inkompatibilitäten zu beheben, sofern dies technisch möglich ist. Das Beheben von Softwareproblemen und Inkompatibilitäten ist insbesondere dann nicht möglich, wenn die Fehler nicht auf den eigenen Computern  des  Herstellers Kilian Markgraf (Kilian-Dev.de)reproduzierbar sind.

2.2. Datensicherung
Es gehört insbesondere zur Sorgfaltspflicht des Kunden, seine Daten hinreichend und wirksam zu schützen. Dies bedeutet unter anderem eine regelmäßige Datensicherung, also das Erstellen einer Kopie aller wichtigen Daten auf einem nicht dauerhaft mit dem Computer verbundenen Datenträger. Diese Art der Datensicherung ist mindestens einmal täglich notwendig.  Bei der täglichen Datensicherung dürfen nicht die Datensicherungen der Vortage überschrieben werden. Zusätzlich ist es bei längerer Arbeit an demselben Dokument notwendig, es während eines Arbeitstages häufiger unter einem neuen Namen zu speichern, um mehrere Kopieren der Datei in ihren verschiedenen Entwicklungsstadien zu behalten. Dies minimiert mögliche Datenverluste.

Falls dennoch Daten verloren oder beeinträchtigt worden sind, wird der Hersteller Kilian Markgraf (Kilian-Dev.de) seine Mithilfe bei der Rekonstruktion der Daten anbieten - in einigen Fällen sogar unentgeltlich.

2.3. Updates
Zum Verantwortungsbereich des Kunden gehört ferner, sich in regelmäßigen Abständen, spätestens aber alle vier Wochen, auf der Website http://www.Kilian-Dev.de in der deutschsprachigen Versions-Historie nach behobenen Fehlern in der Software zu erkundigen und, falls nötig, ein Update herunterzuladen. Allerdings muss auch jedes einzelne Update vom Kunden daraufhin getestet werden, ob es auf seinem Computer zuverlässig funktioniert. Daher wird es empfohlen, immer eine Kopie älterer Versionen zu behalten.

§ 3 Angebot

Die Angebote von Kilian Markgraf (Kilian-Dev.de) sind stets freibleibend und unverbindlich. Angeboten wird die Software in dem Zustand, wie sie bereits vor dem Kauf im Internet zum Download und Test bereit steht.

§ 4 Gefahrenübergang

Die Gefahr geht im Moment des Downloads oder der Übergabe an den Transporteur auf den Kunden über. Bei Downloads muss sich der Kunde durch die entsprechenden Prüfmechanismen oder Software-Tools zur Verpackung von Download-Produkten von der Unversehrtheit der heruntergeladenen Datei vergewissern.

§ 5 Gewährleistung

5.1. Der Kunde ist darüber informiert, dass es sich bei Software um Produkte handelt, die in einem komplexen technischen Zusammenhang in Betrieb genommen werden. Die korrekte Funktion hängt unter anderem von dem verwendeten Computer, der Sprache und Version des Betriebssystems, der installierten Betriebssystemerweiterungen und Gerätetreibern sowie weiteren installierten Hard- und Softwareprodukten ab. Bei Fehlverhalten von Software und bei Abstürzen und Datenverlusten kann es in der Regel nicht eindeutig festgestellt, welche Software tatsächlich den verursachenden Fehler enthält. Selbst wenn ein Fehlverhalten allein aufgrund einer Veränderung der Software des Herstellers Kilian Markgraf (Kilian-Dev.de) korrigiert werden kann, bedeutet dies nicht, dass der eigentliche Fehler sich tatsächlich innerhalb dieser Software befunden hat. Diese Tatsache wird vom Kunden akzeptiert, und er ist sich darüber im klaren, dass dadurch die Verantwortung des Kunden wächst, denn er muss selbst die Anwendbarkeit der Software in seiner spezifischen Umgebung selbst überprüfen.

5.2. Im Falle schwerwiegender Fehlfunktionen, die von der Software des Herstellers Kilian Markgraf (Kilian-Dev.de) nicht innerhalb von drei Monaten behoben werden können, hat der Kunde ein Rückgaberecht.

5.3. Gesetzliche Vorschriften und für den Kunden ähnlich zwingende Vorgaben werden eingehalten. Weitere Gewährleistungen - insbesondere hinsichtlich einer bestimmten Gebrauchsfähigkeit - werden ausdrücklich nicht übernommen.

5.4. Über die in dieser Vereinbarung geregelten Ansprüche hinaus - gleich aus welchem Rechtsgrund - haftet der Hersteller Kilian Markgraf (Kilian-Dev.de) nur, wenn ihm Vorsatz oder grobe Fahrlässigkeit zur Last gelegt und bewiesen werden kann. Die gilt insbesondere für Folgeschäden einschließlich Verlust oder Beschädigung von Daten, entgangenen Gewinnen oder Verlust am Firmenwert. Der Hersteller Kilian Markgraf (Kilian-Dev.de) ersetzt nicht den Aufwand für die Wiederbeschaffung verlorener Daten.

5.5. In jedem Fall wird, soweit zulässig, die Haftung vom Hersteller Kilian Markgraf (Kilian-Dev.de) auf den Wert der jeweiligen Einzellieferung begrenzt. Eine unerhebliche Minderung bleibt außer Betracht.

5.6. Die gesetzliche Gewährleistungsfrist beginnt mit Auslieferung eines Registrierschlüssels.

5.7. Der Kunde hat Gewährleistungsansprüche nur, wenn gemeldete Mängel reproduzierbar sind oder durch maschinell erzeugte Ausgaben aufgezeigt werden können. Der Kunde hat Mängel in nachvollziehbarer Form unter Angabe der für die Mängelerkennung zweckdienlichen Informationen schriftlich zu melden. Der Kunde hat den Support des Herstellers Kilian Markgraf (Kilian-Dev.de) soweit erforderlich bei der Beseitigung von Mängeln zu unterstützen, insbesondere auf Wunsch vom Support Debug-Versionen einzusetzen, Logdateien zu übersenden und Arbeitsmittel zur Verfügung zu stellen.

5.8. Der Hersteller Kilian Markgraf (Kilian-Dev.de) hat das Recht, Mängel zu beseitigen. Dabei braucht die Beseitigung von Mängeln, die den Einsatz eines Programms nicht schwerwiegend beeinträchtigen, erst durch Lieferung einer weiterentwickelten Version zu erfolgen, auch wenn dieses Update kostenpflichtig ist.

5.9. Der Kunde kann eine angemessene Frist für die Beseitigung von Mängeln setzen. Schlägt die Mängelbeseitigung fehl, so kann der Kunde im Rahmen § 6 (AGB-A) Minderung, Wandlung oder Schadenersatz verlangen.

5.10. Die Gewährleistung erlischt für solche Programme, die der Kunde ändert oder in die er sonstwie eingreift, es sei denn, dass der Kunde im Zusammenhang mit der Mängelmeldung nachweist, dass der Eingriff für den Mangel nicht ursächlich ist.

5.11. Der Hersteller Kilian Markgraf (Kilian-Dev.de) kann die Vergütung seines Aufwands verlangen, soweit er aufgrund einer Mängelbeseitigung tätig geworden ist, ohne dass ein Mangel vorliegt.

§ 6 Schutzrechtsverletzungen

6.1. Der Hersteller Kilian Markgraf (Kilian-Dev.de) wird den Kunden und dessen Abnehmer wegen Ansprüchen aus Verletzungen von Urheberrechten, Warenzeichen oder Patenten freistellen, es sei denn der Entwurf des Liefergegenstandes stammt vom Kunden. Die Freistellungsverpflichtung ist betragsmäßig auf den vorhersehbaren Schaden begrenzt. Zusätzliche Voraussetzung für die Freistellung ist, dass der Hersteller Kilian Markgraf (Kilian-Dev.de) die Führung von Rechtstreitigkeiten überlassen wird.

6.2. Der Hersteller Kilian Markgraf (Kilian-Dev.de) hat wahlweise das Recht, sich von den in Abs. 1 übernommenen Verpflichtungen dadurch zu befreien, dass er entweder

a) die erforderlichen Lizenzen bezüglich der angeblich verletzten Patente beschafft oder
b) dem Kunden einen geänderten Liefergegenstand bzw. Teile davon zur Verfügung gestellt, die im Falle des Austausches gegen den verletzten Liefergegenstand bzw. dessen Teil der Verletzungsvorwurf bzgl. des Liefergegenstandes beseitigen.

§ 7 Haftungsbeschränkung

7.1. Der Hersteller Kilian Markgraf (Kilian-Dev.de) haftet gegenüber dem Kunden, gleichgültig aus welchem Rechtsgrund, nur für die von ihm bzw. seinen Mitarbeitern vorsätzlich oder grob fahrlässig verursachten Schäden. Dies gilt auch für Schäden, die durch das Fehlen zugesicherter Eigenschaften hervorgerufen worden sind und für Schadensersatzansprüche wegen Nichterfüllung, allerdings nur insoweit als der Ersatz von mittelbaren oder Mangelfolgeschäden verlangt wird, es sei denn, die Haftung beruht auf einer ausdrücklichen Zusicherung vom Hersteller Kilian Markgraf (Kilian-Dev.de), die den Kunden gegen ein solches Risiko absichern soll. Jede Haftung ist auf den bei Vertragsschluss absehbaren Schaden begrenzt.

7.2. In jedem Fall bleiben hiervon unberührt die Haftung nach dem Produkthaftungsgesetz. Dieses wird, soweit zulässig, durch die besondere Sorgfaltspflicht des Kunden bei Einsatz von Software in komplexen Soft- und Hardwareumgebungen eingeschränkt, wie in den §§ 2 und 6 beschrieben. Insbesondere kann der Hersteller Kilian Markgraf (Kilian-Dev.de) nicht für Datenverluste haftbar gemacht werden, die durch sorgfältig durchgeführte Datensicherungen vermeidbar gewesen wären. Ohnehin kann der Hersteller Kilian Markgraf (Kilian-Dev.de) auch in keinem anderen Falle für Datenverlust haftbar gemacht werden. Darüber hinaus hat der Kunde sofort Kontakt mit Support des Herstellers Kilian Markgraf (Kilian-Dev.de) aufzunehmen und zu versuchen, mit der Hilfe vom Hersteller Kilian Markgraf (Kilian-Dev.de) die Daten zu rekonstruieren. Solche Hilfe wird der Hersteller Kilian Markgraf (Kilian-Dev.de) entgeltlich oder unentgeltlich anbieten, sofern die Aussicht auf Erfolg besteht.

§ 8 Anwendbares Recht, Gerichtsstand, Teilnichtigkeit

8.1. Für diese Geschäftsbedingungen und für die gesamten Rechtsbeziehungen zwischen dem Hersteller Kilian Markgraf (Kilian-Dev.de) und dem Kunden gilt deutsches Recht. Soweit für Auslandskunden das ins deutsche Recht übernommene UN-Kaufrecht anzuwenden wäre, wird dieses ausgeschlossen.

8.2. Ausschließlicher Gerichtsstand für alle sich aus diesem Vertragsverhältnis unmittelbar oder mittelbar ergebenen Streitigkeiten ist Münster.

8.3. Sollte eine Bestimmung in diesen Geschäftsbedingungen unwirksam sein oder werden, so wird hiervon die Wirksamkeit aller sonstigen Bestimmungen oder Vereinbarungen nicht berührt.

""";
