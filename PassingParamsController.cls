public with sharing class PassingParamsController {
    // Unlike std and std set controllers, custom controllers do not need to have a specific constructor
    public PassingParamsController() {
        public PageReference goToPageTwo() {
            //retrieve param
            String myParam = ApexPages.currentPage().getParameters().get('myParam'); 

            //create new url which will point to the next page
            String url = '/apex/PassingParamsPage2?myParam=' + myParam;

            //create pageReference using url
            PageReference pageRef = new PageReference(url);

            // if true a redirect is performed through a client side redirect
            //client side redirect flush the view site
            // specifying false will cause the redirect to happen on the server side
            // this will not flush the view state.
            pageRef.setRedirect(true);
            return pageRef;
        }
    }
}
