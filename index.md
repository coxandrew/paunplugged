---
# Feel free to add content and custom Front Matter to this file.
# To modify the layout, see https://jekyllrb.com/docs/themes/#overriding-theme-defaults

layout: home
title: Home
---

# We Believe

<div class="container">
  <div class="row">
    <ul class="we-believe">
      <li>Technology is a good thing when used intentionally and with purpose</li>
      <li>Childhood is being stolen by screen time</li>
      <li>Kids grow best from real life play and from time spent with people</li>
      <li>The longer we wait to give children devices, the healthier they will be</li>
      <li>Schools should be places to learn, not marketplaces for tech companies</li>
      <li>Teachers should focus on teaching and kids should focus on learning</li>
    </ul>
  </div>
</div>

# Join Our Movement

> As a family, we commit to waiting until at least 9th grade to give our child(ren) a smart phone and delay access to social media until we feel it will be a positive addition to their lives. Prior to high school, we will explore ["talk and text"](https://dumbwireless.com/) only devices for communication needs.
>
> We support school policies that prohibit personal electronic devices throughout the school day.
>
> As parents, we will model positive technology behaviors in and outside of the home.
>
> As stakeholders in our community, we support free-roam childhoods and screen-free experiences. Businesses will offer access to phones and camps, clubs, and activities are encouraged to keep devices away.

<div class="signup-form">
  <form id="emailForm" onsubmit="submitForm(event)">
    <div class="form-group">
      <label for="parentName">Parent/Guardian Name(s)</label>
      <small class="form-text text-muted">This is how your name(s) will appear on https://paunplugged.org (examples: "Jenn and Matt Jones" or "Simpson Family").</small>
      <input type="text" id="parentName" name="parentName" class="form-control" placeholder="Enter your name(s)" required>
    </div>

    <div class="form-group">
      <label for="email">Email Address</label>
      <input type="email" id="email" name="email" class="form-control" placeholder="Enter your email" required>
    </div>

    <div class="form-group">
      <label>Are you okay with your name appearing on the PA Unplugged website?</label>
      <div class="radio-group">
        <div class="form-check">
          <input class="form-check-input" type="radio" name="publicName" id="publicNameYes" value="yes" required>
          <label class="form-check-label" for="publicNameYes">Yes</label>
        </div>
        <div class="form-check">
          <input class="form-check-input" type="radio" name="publicName" id="publicNameNo" value="no" required>
          <label class="form-check-label" for="publicNameNo">No, I'd like to be anonymous</label>
        </div>
      </div>
    </div>

    <div class="form-group">
      <label>Commitment Agreement</label>
      <div class="radio-group">
        <div class="form-check">
          <input class="form-check-input" type="radio" name="commitment" id="commitmentYes" value="committed" required>
          <label class="form-check-label" for="commitmentYes">I commit to delaying the purchase of a smartphone and the usage of social media for my child(ren)</label>
        </div>
        <div class="form-check">
          <input class="form-check-input" type="radio" name="commitment" id="commitmentNo" value="considering" required>
          <label class="form-check-label" for="commitmentNo">I am considering this commitment and would like more information</label>
        </div>
      </div>
    </div>

    <div class="children-section">
      <div id="childrenContainer">
        <div class="child-entry">
          <div class="child-header">
            <h4>Child #1</h4>
          </div>
          <div class="form-group">
            <label for="graduationYear1">Graduation Year</label>
            <select class="form-select" id="graduationYear1" name="graduationYear[]" required>
              <option value="">Select Graduation Year</option>
              <option value="2025">2025</option>
              <option value="2026">2026</option>
              <option value="2027">2027</option>
              <option value="2028">2028</option>
              <option value="2029">2029</option>
              <option value="2030">2030</option>
              <option value="2031">2031</option>
              <option value="2032">2032</option>
              <option value="2033">2033</option>
              <option value="2034">2034</option>
              <option value="2035">2035</option>
              <option value="2036">2036</option>
              <option value="2037">2037</option>
              <option value="2038">2038</option>
              <option value="2039">2039</option>
              <option value="2040">2040</option>
              <option value="2041">2041</option>
              <option value="2042">2042</option>
              <option value="2043">2043</option>
              <option value="2044">2044</option>
              <option value="2045">2045</option>
            </select>
          </div>
          <div class="form-group">
            <label for="county1">County</label>
            <select class="form-select county-select" id="county1" name="county[]" onchange="updateDistricts(this)" required>
              <option value="">Select County</option>
              <option value="Allegheny">Allegheny County</option>
              <option value="Beaver">Beaver County</option>
              <option value="Delaware">Delaware County</option>
            </select>
          </div>
          <div class="form-group">
            <label for="district1">School District</label>
            <select class="form-select district-select" id="district1" name="district[]" required disabled>
              <option value="">Select District</option>
            </select>
          </div>
        </div>
      </div>
      <button type="button" class="btn btn-secondary" onclick="addChild()">Add Another Child</button>
    </div>

    <div class="form-group">
      <label for="comments">Additional Comments or Questions</label>
      <textarea class="form-control" id="comments" name="comments" rows="3" placeholder="Share any additional thoughts or questions you may have"></textarea>
    </div>

    <div class="form-group">
      <label>Would you like to be added to a community email list for updates and support?</label>
      <div class="radio-group">
        <div class="form-check">
          <input class="form-check-input" type="radio" name="emailList" id="emailListYes" value="yes" required>
          <label class="form-check-label" for="emailListYes">Yes</label>
        </div>
        <div class="form-check">
          <input class="form-check-input" type="radio" name="emailList" id="emailListNo" value="no" required>
          <label class="form-check-label" for="emailListNo">No</label>
        </div>
      </div>
    </div>

    <button type="submit" class="btn btn-primary">Sign Up</button>
  </form>
</div>

<div id="toast" class="toast" role="alert" aria-live="assertive" aria-atomic="true">
  <div class="toast-header">
    <strong class="me-auto">Success</strong>
    <button type="button" class="btn-close" onclick="dismissToast()" aria-label="Close"></button>
  </div>
  <div class="toast-body">
    Thank you for joining us!
  </div>
</div>

<hr>

<div class="unplugged-families">
  {% assign committed_families = site.data.supporters | where_exp: "supporter", "supporter['Commitment Status'] contains 'committed'" %}
  {% assign families_by_name = committed_families | group_by: "Parent/Guardian Name" %}

  <h1>Unplugged Families</h1>
  <h2>{{ families_by_name.size }} families with {{ site.data.supporters | size | minus: 1 }} children have joined the movement in Pennsylvania</h2>

  <section class="grade-group">
      <div class="grade-filter">
          <select id="grade-filter" class="form-select" onchange="filterFamilies()">
              <option value="all">Show All Families</option>
              <option value="grade-kindergarten">Kindergarten</option>
              <option value="grade-1st">1st Grade</option>
              <option value="grade-2nd">2nd Grade</option>
              <option value="grade-3rd">3rd Grade</option>
              <option value="grade-4th">4th Grade</option>
              <option value="grade-5th">5th Grade</option>
              <option value="grade-6th">6th Grade</option>
              <option value="grade-7th">7th Grade</option>
              <option value="grade-8th">8th Grade</option>
              <option value="grade-9th">9th Grade</option>
              <option value="grade-10th">10th Grade</option>
              <option value="grade-11th">11th Grade</option>
              <option value="grade-12th">12th Grade</option>
          </select>
      </div>
  </section>

  {% assign sorted_families = families_by_name | sort: "name" %}
  {% for family in sorted_families %}
    {% assign class_names = "family" %}
    {% assign children = family.items | sort: "Graduation Year" %}

    {% for child in children %}
      {% assign graduation_year = child["Graduation Year"] | plus: 0 %}
      {% assign current_year = 2024 %}
      {% assign years_until_graduation = graduation_year | minus: current_year %}
      {% assign grade_number = 12 | minus: years_until_graduation | plus: 1 %}

      {% case grade_number %}
        {% when 0 %}
          {% assign grade = "Kindergarten" %}
        {% when 1 %}
          {% assign grade = "1st" %}
        {% when 2 %}
          {% assign grade = "2nd" %}
        {% when 3 %}
          {% assign grade = "3rd" %}
        {% when 4 %}
          {% assign grade = "4th" %}
        {% when 5 %}
          {% assign grade = "5th" %}
        {% when 6 %}
          {% assign grade = "6th" %}
        {% when 7 %}
          {% assign grade = "7th" %}
        {% when 8 %}
          {% assign grade = "8th" %}
        {% when 9 %}
          {% assign grade = "9th" %}
        {% when 10 %}
          {% assign grade = "10th" %}
        {% when 11 %}
          {% assign grade = "11th" %}
        {% when 12 %}
          {% assign grade = "12th" %}
        {% else %}
          {% assign grade = "Preschool" %}
      {% endcase %}

      {% assign class_names = class_names | append: " grade-" | append: grade | downcase %}
    {% endfor %}

    <div class="{{ class_names }}">
      <div class="parents">
        {{ family.name }}
      </div>
      <div class="students">
        {% assign child_count = children.size %}
        {% assign second_to_last_index = child_count | minus: 1 %}

        {% assign unique_grades = "" | split: "" %}
        {% for child in children %}
          {% assign graduation_year = child["Graduation Year"] | plus: 0 %}
          {% assign current_year = 2024 %}
          {% assign years_until_graduation = graduation_year | minus: current_year %}
          {% assign grade_number = 12 | minus: years_until_graduation | plus: 1 %}

          {% case grade_number %}
            {% when 0 %}
              {% assign grade = "Kindergarten" %}
            {% when 1 %}
              {% assign grade = "1st" %}
            {% when 2 %}
              {% assign grade = "2nd" %}
            {% when 3 %}
              {% assign grade = "3rd" %}
            {% when 4 %}
              {% assign grade = "4th" %}
            {% when 5 %}
              {% assign grade = "5th" %}
            {% when 6 %}
              {% assign grade = "6th" %}
            {% when 7 %}
              {% assign grade = "7th" %}
            {% when 8 %}
              {% assign grade = "8th" %}
            {% when 9 %}
              {% assign grade = "9th" %}
            {% when 10 %}
              {% assign grade = "10th" %}
            {% when 11 %}
              {% assign grade = "11th" %}
            {% when 12 %}
              {% assign grade = "12th" %}
            {% else %}
              {% assign grade = "Preschool" %}
          {% endcase %}

          {% if grade != "Kindergarten" and grade != "Preschool" %}
            {% assign grade = grade | append: " grade" %}
          {% endif %}

          {% unless unique_grades contains grade %}
            {% assign unique_grades = unique_grades | push: grade %}
          {% endunless %}
        {% endfor %}

        {% assign unique_grades_count = unique_grades.size %}
        {% for grade in unique_grades %}
          {% if forloop.last and unique_grades_count > 1 %}
            & {{ grade }}
          {% elsif forloop.last %}
            {{ grade }}
          {% elsif forloop.index < unique_grades_count | minus: 1 %}
            {{ grade }},
          {% else %}
            {{ grade }} &
          {% endif %}
        {% endfor %}
        @ {% assign districts = children | map: "District" | uniq | join: ", " %}{{ districts }}
      </div>
    </div>
  {% endfor %}
</div>

<script>
  function filterFamilies() {
    var filter = document.getElementById("grade-filter").value;
    var families = document.getElementsByClassName("family");

    for (var i = 0; i < families.length; i++) {
        if (filter === "all") {
            families[i].style.display = "block";
        } else {
            if (families[i].classList.contains(filter)) {
                families[i].style.display = "block";
            } else {
                families[i].style.display = "none";
            }
        }
    }
}

function showToast() {
  const toast = document.getElementById('toast');
  toast.classList.add('show');
}

function dismissToast() {
  const toast = document.getElementById('toast');
  toast.classList.remove('show');
}

// District data
const districtsByCounty = {
  'Allegheny': [
    'Bethel Park', 'Central Catholic', 'Eden Christian', 'Faulk Laboratory',
    'Fox Chapel', 'Keystone Oaks', 'Montessori', 'Mt. Lebanon', 'New Brighton',
    'North Allegheny', 'Oakland Catholic', 'Pine Richland', 'Pittsburgh Public',
    'Quaker Valley', 'Saint James', 'Seneca Valley', 'Sewickley Academy',
    'Shady Side Academy', 'The Ellis School', 'Upper Saint Clair', 'Watermark'
  ],
  'Beaver': [
    'Beaver Area', 'Beaver Falls', 'Blackhawk', 'New Brighton'
  ],
  'Delaware': [
    'Chester Upland', 'Chichester', 'Garnet Valley', 'Haverford Township',
    'Interboro', 'Marple Newtown', 'Penn-Delco', 'Radnor', 'Ridley',
    'Rose Tree Media', 'Southeast Delco', 'Springfield', 'Upper Darby',
    'Wallingford-Swarthmore', 'William Penn'
  ]
};

function updateDistricts(countySelect) {
  const childEntry = countySelect.closest('.child-entry');
  const districtSelect = childEntry.querySelector('.district-select');
  const selectedCounty = countySelect.value;

  // Clear and disable district select
  districtSelect.innerHTML = '<option value="">Select District</option>';
  districtSelect.disabled = !selectedCounty;

  if (selectedCounty) {
    // Add districts for selected county
    districtsByCounty[selectedCounty].forEach(district => {
      const option = document.createElement('option');
      option.value = district;
      option.textContent = district;
      districtSelect.appendChild(option);
    });
  }
}

function addChild() {
  const container = document.getElementById('childrenContainer');
  const childEntry = document.createElement('div');
  childEntry.className = 'child-entry';

  // Get the next child number
  const childNumber = container.children.length + 1;

  // Get the previous child's county and district if it exists
  let previousCounty = '';
  let previousDistrict = '';
  if (childNumber > 1) {
    const previousChildEntry = container.children[childNumber - 2];
    const previousCountySelect = previousChildEntry.querySelector('.county-select');
    const previousDistrictSelect = previousChildEntry.querySelector('.district-select');
    previousCounty = previousCountySelect.value;
    previousDistrict = previousDistrictSelect.value;
  }

  // Create child header with remove link
  const headerDiv = document.createElement('div');
  headerDiv.className = 'child-header';
  headerDiv.innerHTML = `
    <h4>Child #${childNumber}</h4>
    <a href="#" class="remove-child" onclick="event.preventDefault(); this.closest('.child-entry').remove();">Remove</a>
  `;

  // Create graduation year select
  const yearSelect = document.createElement('select');
  yearSelect.className = 'form-select';
  yearSelect.id = `graduationYear${childNumber}`;
  yearSelect.name = 'graduationYear[]';
  yearSelect.required = true;

  // Add the options
  const years = Array.from({length: 21}, (_, i) => 2025 + i);
  yearSelect.innerHTML = `
    <option value="">Select Graduation Year</option>
    ${years.map(year => `<option value="${year}">${year}</option>`).join('')}
  `

  // Create county select
  const countySelect = document.createElement('select');
  countySelect.className = 'form-select county-select';
  countySelect.id = `county${childNumber}`;
  countySelect.name = 'county[]';
  countySelect.required = true;
  countySelect.onchange = function() { updateDistricts(this); };

  // Add county options
  countySelect.innerHTML = `
    <option value="">Select County</option>
    <option value="Allegheny" ${previousCounty === 'Allegheny' ? 'selected' : ''}>Allegheny County</option>
    <option value="Beaver" ${previousCounty === 'Beaver' ? 'selected' : ''}>Beaver County</option>
    <option value="Delaware" ${previousCounty === 'Delaware' ? 'selected' : ''}>Delaware County</option>
  `;

  // Create district select
  const districtSelect = document.createElement('select');
  districtSelect.className = 'form-select district-select';
  districtSelect.id = `district${childNumber}`;
  districtSelect.name = 'district[]';
  districtSelect.required = true;
  districtSelect.disabled = !previousCounty;
  districtSelect.innerHTML = '<option value="">Select District</option>';

  // If there was a previous county, populate and select the district
  if (previousCounty) {
    districtsByCounty[previousCounty].forEach(district => {
      const option = document.createElement('option');
      option.value = district;
      option.textContent = district;
      option.selected = district === previousDistrict;
      districtSelect.appendChild(option);
    });
  }

  // Create form groups
  const yearGroup = document.createElement('div');
  yearGroup.className = 'form-group';
  yearGroup.innerHTML = '<label for="graduationYear' + childNumber + '">Graduation Year</label>';
  yearGroup.appendChild(yearSelect);

  const countyGroup = document.createElement('div');
  countyGroup.className = 'form-group';
  countyGroup.innerHTML = '<label for="county' + childNumber + '">County</label>';
  countyGroup.appendChild(countySelect);

  const districtGroup = document.createElement('div');
  districtGroup.className = 'form-group';
  districtGroup.innerHTML = '<label for="district' + childNumber + '">School District</label>';
  districtGroup.appendChild(districtSelect);

  // Assemble the child entry
  childEntry.appendChild(headerDiv);
  childEntry.appendChild(yearGroup);
  childEntry.appendChild(countyGroup);
  childEntry.appendChild(districtGroup);

  // Add to container
  container.appendChild(childEntry);
}

function submitForm(event) {
  event.preventDefault();

  const formData = new FormData(event.target);
  const data = Object.fromEntries(formData.entries());

  // Show loading state
  const submitButton = event.target.querySelector('button[type="submit"]');
  submitButton.disabled = true;
  submitButton.innerHTML = 'Submitting...';

  // Format children data
  const children = [];
  const graduationYears = Array.isArray(data['graduationYear[]']) ? data['graduationYear[]'] : [data['graduationYear[]']];
  const counties = Array.isArray(data['county[]']) ? data['county[]'] : [data['county[]']];
  const districts = Array.isArray(data['district[]']) ? data['district[]'] : [data['district[]']];

  for (let i = 0; i < graduationYears.length; i++) {
    children.push({
      graduationYear: graduationYears[i],
      county: counties[i],
      district: districts[i]
    });
  }

  // Prepare data for submission
  const submitData = {
    parentName: data.parentName,
    email: data.email,
    publicName: data.publicName,
    commitment: data.commitment,
    timestamp: new Date().toISOString(),
    comments: data.comments || '',
    emailList: data.emailList || '',
    children: JSON.stringify(children)
  };

  // Send data to Google Apps Script
  fetch('https://script.google.com/macros/s/AKfycby2Rn6ZAkbqq-2peknv2TwpeTU5wflBWRFqzSvc_LvRc1wD-rkGuyaBIh43p44fgWUp/exec', {
    method: 'POST',
    mode: 'no-cors',
    headers: {
      'Content-Type': 'application/x-www-form-urlencoded',
    },
    body: new URLSearchParams(submitData).toString()
  })
  .then(() => {
    // Show success toast
    showToast();

    // Reset form
    event.target.reset();

    // Reset district selects
    document.querySelectorAll('.district-select').forEach(select => {
      select.innerHTML = '<option value="">Select District</option>';
      select.disabled = true;
    });
  })
  .catch(error => {
    console.error('Error:', error);
    alert('There was an error submitting the form. Please try again.');
  })
  .finally(() => {
    // Reset button state
    submitButton.disabled = false;
    submitButton.innerHTML = 'Sign Up';
  });
}
</script>
