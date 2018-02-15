# Appdevel procesy

Pro vývoj se maximálně snažíme používat eko systém a jeho best practices. Hlavním důvodem je výborná podpora, neustálý vývoj a dobrá čitelnost. Vždy mějte na paměti, že kód, který napíšete někdo bude v budoucnu spravovat nebo dále rozvíjet. Totéž se může stát vám, když se dostanete po dvou letech k cizímu kódu, tak by měl být jednoduše pochopitelný. Takže: Taylor Otwell je bůh (Laravel dokumentace), Jeffrey Way syn (Laracast se stovkami video turoriálů) a best practises duch svatý.

Důrazně doporučuji začlenit si do denního programu rutinu, kdy se 15-20min podíváte na nějaké Laracast video. Pokaždé si z toho odnesu něco, co mi ihned zjednodušší a zefektivní každodenní práci. Appdevel přístup na [Laracast](laracost.com) získáte od [Pavel Bobek](mailto:pavel@appdevel.cz).

## Vývoj

Pro vývoj doporučuji používat [Laradoc](http://laradock.io/). Je to před-konfigurované Docker php prostředí. Konfigurace je navíc shodná s prostředím na našich staging serverech u Digital Ocean (přes Laravel Forge). Nemusíte tedy instalovat php, mysql na svém počítači, všech jede v Dockeru.

Doporučuji instalaci [B Setup for Multiple Projects](http://laradock.io/#B), tedy multi-project. Nový projekt potom jednoduše přidáte v laradock bash do nginx/sites a na svém počítače upravíte jen hosts.

Vyvíjíte potom ve svém oblíbeném IDE na lokálních souborech, ale v prohlížeči se díváte na Docker, v které také jedete např. composer, php artisan apod.

Přidávám svůj [startovací script](https://github.com/Appdevelcz/appdevel-processes/blob/master/laradock.sh), který spustí požadované služby a rovnou se přihlásí do bash jako uživatel laradock (ne jako root).

## Github

Pro verzování používáme Git a jako hlavní repository Github. Záleží na komplexnosti projektu, ale většinou není potřeba více větví (branches Master, Stage, Devel). Dělejte spíš více menších commitů a hned to git push, aby byly commity přehledné a mohli se sledovat denní práce. 

Pro přístup na Github pošlete svůj private ssh key a uživatelské Github jméno na [Pavel Bobek](mailto:pavel@appdevel.cz).

## Deployment

Deployment na staging server je ve většině případů nastavený automaticky přes Laravel Forge, takže se nemusíte o nic starat. Je tam hook na Github, tak při každém vašem git push se změny stáhnout na staging server a zároveň se spustí composer install a php artisan migrate. Migrace bývají často důvodem k chybám deploymentu, takže dbejte na to aby byly čisté. V případě neúspěšného deploymentu mi chodí emaily, tak vás když tak upozorním. Potom to je potřeba vyžešit přímo na serveru přes ssh.

Problém je s kódery. Nepoužívají git, takže vyvíjejí přes ftp přímo na staging serveru. Většinou je úkolujete přímo vy, takže když se něco dokončí, tak se přihlašte přes ssh a commit/push, ať to je na Githubu.

Pro ssh přístup na staging server pošlete svůj private ssh key na [Pavel Bobek](mailto:pavel@appdevel.cz).

## Komunikace

Pro synchronní komunikaci používejte [Bluesystem Slack](http://bluesystem.slack.com/). Řeší se tam hlavně pairing, blockery a zúžené pasáže, kdy vás něco zpomaluje nebo brání v pokračování. Efektivní je si domluvit krátký skype, který je často efektivnější.

Jinak úkoly se zadávají hlavně do [Helpdesku](https://helpdesk.bluesystem.cz/), kam reportuje postup a hodiny. Hodiny z Helpdesku slouží jako podklad pro fakturaci. Helpdesk proto aktualizujte **DENNĚ**. Pokud např. potřebujete stylování nebo nějaké podklady, tak vytvořte ticket, přiřaďte ho a nastavte požadovanou prioritu.

Pro plánování týdenních prací upřednostňuji pravidelný krátký skype, nejlépe hned v pondělí. Projedeme co se udělalo, dáme priority, případně se domluvíme na podkladem, upřesnění zadání apod. Dejte vědět, kdy se vám to nejlépe hodí.

## Ostatní

[Laravel resources - doporučené balíčky, bookmarky, nástroje...](https://github.com/Appdevelcz/appdevel-processes/blob/master/laravel_resources)
