# Active Record Associations

### Lecture Take Aways

- Active Record Associations: One to Many
- Has many, belongs to
- Active Record Associations: Many to Many
- Has many, through
- Join models
- Custom instance and class methods 

### Lecture Deliverables

- Create a new class Donor and donors table
- A donor will have a name attribute
- Set up associations between Donor, Donations, and Organization
- Modify the Donations table to reflect the newly defined associations with a foreign key column.

### Association Macros 
- has_many
- belongs_to
- has many, through 


### Domain modeling 


# Donation 
  - amount: integer, date: integer, completed: boolean
  - belongs_to :organization 
  - belongs_to :donor *** 
  - one to one relationship 
  - donation a join table between the donor and organization 

# Donor 
  - name: string 
  - has_many donations
  - has_many organizations, through donations ***

# Organization 
  - name: string
  - has_many :donations
  - has_many donors, through donations 
  - one to many relationship 


  # parent/child relationship 

  # belongs_to 
    - child object 
    - this where the foreign key column is created in the child table
    - convention we follow for the foreign key column is going parent_id 
    - What we store in the foreign key column is the ID of the parent object

  # has_many 
    - parent object 
  

  # has_many, through:
    - join table
    - chracteristics: it has 2 foreign key columns 
    - in order for the two classes to be related, they muust be related to the join table directly
    - many to many relationship 