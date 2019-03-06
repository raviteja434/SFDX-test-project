public class SolutionLibraryTabController {
    /*Tab var*/
    public String var{get;set;}

    public SolutionLibraryTabController(){
        var = 'srch';
    }

    public PageReference setActiveTab() {
        if(var=='srch'){
            var='insrt';
        }
        else {
            var = 'srch';
        }
        System.debug('var  '+var);//Use debug to check if value is there
        return null;
    }
}