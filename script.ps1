$baseDir = "content"
$contestProblemsSubDirs = @("atcoder/abc", "atcoder/arc", "atcoder/agc", "leetcode/weekly_contest", "leetcode/biweekly_contest", "leetcode/problemset", "codeforces/rounds/div1", "codeforces/rounds/div2", "codeforces/rounds/div3", "codeforces/gyms", "codeforces/educational", "codechef/long_challenge", "codechef/cook_off", "codechef/lunch_time")
$tutorialsSubDirs = @("data_structures/basic", "data_structures/intermediate", "data_structures/advanced", "algorithms/sorting_searching", "algorithms/dynamic_programming", "algorithms/graph_theory", "algorithms/mathematical", "programming_languages/python", "programming_languages/java", "programming_languages/c_plus_plus", "programming_languages/javascript")
$interviewPrepSubDirs = @("company_wise/google", "company_wise/facebook", "company_wise/amazon", "company_wise/microsoft", "topic_wise/data_structures", "topic_wise/algorithms", "topic_wise/system_design")
$challengesSubDirs = @("daily_challenge", "weekly_challenge", "monthly_challenge")
$resourcesSubDirs = @("books", "online_courses", "websites")
$communitySubDirs = @("forum", "success_stories", "q_and_a")

# Function to create directories and _index.md files
function Create-DirectoryAndIndex {
    param (
        [string]$baseDirectory,
        [array]$subDirectories
    )

    foreach ($subDir in $subDirectories) {
        $path = Join-Path -Path $baseDirectory -ChildPath $subDir
        $indexPath = Join-Path -Path $path -ChildPath "_index.md"
        New-Item -ItemType Directory -Path $path -Force
        New-Item -ItemType File -Path $indexPath -Force
    }
}

# Creating the structures and index files
Create-DirectoryAndIndex -baseDirectory $baseDir -subDirectories $contestProblemsSubDirs
Create-DirectoryAndIndex -baseDirectory "$baseDir/tutorials" -subDirectories $tutorialsSubDirs
Create-DirectoryAndIndex -baseDirectory "$baseDir/interview_preparation" -subDirectories $interviewPrepSubDirs
Create-DirectoryAndIndex -baseDirectory "$baseDir/challenges" -subDirectories $challengesSubDirs
Create-Directory
