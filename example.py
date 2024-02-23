import sys
sys.path.append('./src')
import interscript
interscript.load_map("bgnpcgn-ukr-Cyrl-Latn-2019")
print(interscript.transliterate("bgnpcgn-ukr-Cyrl-Latn-2019", "привет"))
