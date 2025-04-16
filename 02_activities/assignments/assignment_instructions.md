# Shell / Git Assignment
You work in the data team at a consulting firm, and one of your team's products is helping companies optimize and manage their cloud hosting expenditures.

Your team has an existing bash script that initializes an analysis directory for each new client.

You've been asked to update this script to also automate the initial organization of data files provided by clients.

## Instructions

### Setup
1. **Forking the Repository**: If you have not already done so, fork this Shell learning module repository following these [instructions](https://github.com/UofT-DSI/onboarding/blob/main/onboarding_documents/submissions.md#setting-up). 
   - Forking creates a copy of the main repository in your GitHub account. This allows you to work on your version without affecting the original repository.
2. **Enable GitHub Actions**: Click on the **Actions** tab in your repository and enable workflows if prompted.  
   - The autograder is run using GitHub Actions. If this is not enabled, the autograder will not run.  

<img src="./github_actions.png" width="500px">

3. **Clone your forked repo**: Clone the repository so you can work on it locally
    - Hint: Clone repositories using the command `git clone <your forked url>`

4. **Create a Branch for Your Work**: Create a new branch named `assignment`:
    - ⚠️ Don't complete your assignment in the main branch
    - Hint: Create a new branch by running `git switch -c assignment` in your local clone of your forked repo.    

---

### Part 1: Update the Data Ingest Script
1. **Modify the script**: Using the template in ``02_activities/assignments/assignment.sh``, fill in the correct commands as described by the comments.
    - It may help to paste your commands into the Terminal as you write your script (or vice versa) to test as you go
2. **Run and test your script**: Execute your script to ensure it works as expected. You may need to make additional tweaks and re-run it until you are satisfied with the results.
    - Hint: Shell scripts can be run using `bash <your script filename>`
    - Check if the expected directories are created.
    - Verify that files are moved or copied as expected.
    - Ensure that files that should be deleted are no longer present.
3. **Commit your changes**: As you complete parts of your script and confirmed that it is working correctly, stage and commit your changes to ensure your progress is saved.

---

### Part 2: Merge in Updates from Your Coworkers
Your coworkers have made some other changes to the script. You'll need to incorporate their updates and resolve any conflicts.
1. **Merge updates**: Use the following command to pull in changes from the coworker's branch:
   ```bash
   git pull https://github.com/UofT-DSI/shell coworker-changes --no-rebase
   ```
2. **Resolve Merge Conflicts**: If there are any conflicts, use ```git status``` to see which files are affected, resolve the conflicts manually, and then mark them as resolved.
1. **Re-test Your Script**: Make sure that your script still works after merging the updates and make any changes as necessary

3. **Commit the Merge**: Once all conflicts are resolved:
    1. stage the conflicted files, then
    2. complete the merge by committing

---

### Submit Your Changes for Review
1. **Commit Your Final Changes**: Ensure all changes are committed in your `assignment` branch. You can verify this with:
   ```bash
   git status
   ```
3. **Create a Pull Request**:
   - Open a pull request from your `assignment` branch to **your repository's** `main` branch.
   - The autograder will run automatically and post your assignment grade as a comment.
   - Ensure the pull request is **NOT** made to the `UofT-DSI` organization
   - ⚠️ **Do not merge** your pull request until the end of the module. Your teaching team will only grade *open* pull requests.

---

## Submission Information

🚨 **Please review our [Assignment Submission Guide](https://github.com/UofT-DSI/onboarding/blob/main/onboarding_documents/submissions.md)** 🚨 for detailed instructions on how to format, branch, and submit your work. Following these guidelines is crucial for your submissions to be evaluated correctly.

### Grading guidelines:
This assignment is considered complete if all autograder tests pass successfully, and incomplete otherwise.

### Submission Parameters:
* The branch name for your repo should be: `assignment`
* What to submit for this assignment:
    * One or more commits that update the `assignment.sh` script
* What the pull request link should look like for this assignment: `https://github.com/<your_github_username>/shell/pull/<pr_id>`
    * Open a private window in your browser. Copy and paste the link to your pull request into the address bar. Make sure you can see your pull request properly. This helps the technical facilitator and learning support staff review your submission easily.

Checklist:
- [ ] Create a branch called `assignment`.
- [ ] Ensure that your repository is public.
- [ ] Review [the PR description guidelines](https://github.com/UofT-DSI/onboarding/blob/main/onboarding_documents/submissions.md#guidelines-for-pull-request-descriptions) and adhere to them.
- [ ] Verify that your link is accessible in a private browser window.
