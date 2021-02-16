# Skripty pro zpracování vyřazené literatury z knihovny

Převod JSON souboru exportovaného z Woocommerce na PDF formulář k tisku.
Potřebuje rozšíření [Advanced Order Export For
WooCommerce](https://wordpress.org/plugins/woo-order-export-lite/)

## Postup při tisku objednávek vyřazené literatury

![Formulář exportu](screenshot.png)

V administračním rozhraní WordPressu vybereme v menu `Woocommerce` položku
`Export Orders`. 

![Nastavení statusů](screenshot2.png)

Ve formuláři `Order statuses` je třeba odebrat položku `Dokončeno`.

V levém formuláři pak vybereme formát `JSON` a stiskneme tlačítko `Preview`. Vygenerovaný JSON kód zkopírujeme a vytvoříme PDF pomocí

    xclip -o | ./eshop_objednavky.lua 

Nejlepší je na to vytvořit nějaký link v `.bashrc` jako:

    




