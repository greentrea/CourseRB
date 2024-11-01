#initialize Git of course (only needed once by Stefan Graf)
system("git init")

# Add remote GitHub repository (replace the URL with your GitHub repository link)
system('git remote add origin https://github.com/greentrea/CourseRB.git')

# Add all files to staging
system("git add .")

# Commit the initial setup
system('git commit -m "Initial commit with course materials and renv setup"')

# Push the local repository to GitHub
system('git push -u origin master')


token <- auth_code()
