from ff4f00 import *
from surrealdb import SurrealDB
from ff4f00.strings import to_string

fn test_surrealdb() raises:
    print("Starting SurrealDB tests...")
    
    # Initialize database connection
    var db = SurrealDB()
    
    # Test 1: Create a table and insert data
    print("\nTest 1: Creating a person record")
    var create_query = """
    CREATE person:john SET
        name = 'John Doe',
        age = 30,
        email = 'john@example.com'
    """
    var response = db.query(create_query)
    print("Create response:", to_string(response.body_raw))
    
    # Test 2: Query the created record
    print("\nTest 2: Querying the person record")
    response = db.query("SELECT * FROM person:john")
    print("Select response:", to_string(response.body_raw))
    
    # Test 3: Update the record
    print("\nTest 3: Updating the person record")
    var update_query = """
    UPDATE person:john SET
        age = 31,
        email = 'john.doe@example.com'
    """
    response = db.query(update_query)
    print("Update response:", to_string(response.body_raw))
    
    # Test 4: Delete the record
    print("\nTest 4: Deleting the person record")
    response = db.query("DELETE person:john")
    print("Delete response:", to_string(response.body_raw))
    
    print("\nAll tests completed!")

fn main() raises:
    try:
        test_surrealdb()
    except e:
        print("Error during testing:", e) 