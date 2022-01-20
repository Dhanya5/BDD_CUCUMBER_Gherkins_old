package StepDefinitions;

import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;

public class GETmethod {

	
	@Given("User creates GET request for LMS API endpoint")
	public void user_creates_get_request_for_lms_api_endpoint() {
	   
	


	}
@When("User sends the request")
public void user_sends_the_request() {
  
}

@Then("User receives {int} Unauthorized error")
public void user_receives_unauthorized_error(Integer int1) {
}  
@Given("User sets the Authorization as Basic Auth with Valid User name and password")
public void user_sets_the_authorization_as_basic_auth_with_valid_user_name_and_password() {
   
}

@Then("User receives {int} OK Status")
public void user_receives_ok_status(Integer int1) {

}

@Then("User receives {int} OK Status with the complete list of programs including programId,programName,programDescription,online fields")
public void user_receives_ok_status_with_the_complete_list_of_programs_including_program_id_program_name_program_description_online_fields(Integer int1) {
 
}

@Then("User receives {int} Not Found message")
public void user_receives_not_found_message(Integer int1) {
  
}

}
