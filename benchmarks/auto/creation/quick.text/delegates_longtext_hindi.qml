import QtQuick 2.0
import QmlBench 1.0

// Tests the creation of Text with a long string of hindi text.
CreationBenchmark {
    id: root;
    count: 20;
    staticCount: 500;
    delegate: Text {
        x: QmlBench.getRandom() * (root.width - width)
        y: QmlBench.getRandom() * (root.height - height)
        width: root.width * 0.33
        wrapMode: Text.WordWrap
        font.pixelSize: 10
        text: "गोपनीयता लाभान्वित अमितकुमार विभाग बहुत जानते बदले गटकउसि भोगोलिक बीसबतेबोध यायेका वर्तमान दस्तावेज अपने नवंबर परस्पर विस्तरणक्षमता मुक्त मेमत समजते लगती क्षमता खरिदने तकनिकल बाजार भोगोलिक सम्पर्क जिवन ध्येय विश्वास पहोचाना उपलब्धता सकता विश्व ब्रौशर एसेएवं सुचनाचलचित्र सहित वेबजाल आवश्यकत कार्यसिधान्तो विशेष किके कार्य बाधा ऎसाजीस समस्याए निर्माता पुर्णता बीसबतेबोध भाति चुनने उपेक्ष विकसित विश्लेषण नीचे दौरान आपको मुख्यतह विचारशिलता कराना कार्य लगती वातावरण सार्वजनिक जोवे व्यवहार मार्गदर्शन विशेष आजपर पहोच। पुर्णता विचरविमर्श विकासक्षमता शीघ्र पुस्तक आशाआपस कार्यकर्ता वहहर नाकर असक्षम प्राप्त आंतरजाल विवरन जाता जिसकी सभीकुछ परिभाषित शीघ्र निर्देश मुख्यतह बिना"

    }
}


