public with sharing class DynamicComponentController {
    // cretae an output text VF component
    public component.Apex.OutputText getOutputText() {
        // creaate new instance
        component.Apex.OutputText outputText = new component.Apex.OutputText();
        outputText.value = 'Happy 2019';

        return outputText;
    }
}
