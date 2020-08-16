# Removing red squiggles (Intellisense errors) for Unreal Engine

This guide should remove all Intellisense errors from your project. I've recently finished a Udemy series and had no problems fixing any Intellisense errors with this guide.

I've tested this in both Visual Studio 2019 and VSCode (Latest Microsoft C++ plugin). They both work. (Windows 10)

Some other compilers, with their version of Intellisense, may still be helped by some of this info.

##### Note: VSCode was used with Build Tools for Visual Studio 2019

# Table of Contents: 

#### If you just created a new project
* [Step 1](#Step-1)

#### Everyday coding errors
* [Step 2](#Step-2)
* [Step 3](#Step-3)

#### Intellisense reset
* [Step 4](#Step-4)

#### Lots of errors you can't seem to fix
* [Step 5](#Step-5)

#### Slow/Weird acting Intellisense
* Coming Soon™

#### UE4 source code errors
* [Step 7](#Step-7)

#### GetLifetimeReplicatedProps errors
* [Step 8](#Step-8)

#### UE4 4.25.0/4.25.1 Defines bug
* [Step 9](#Step-9)
---    

# How to fix red squiggles:


## Step 0.
Try using the latest Visual Studio 2019 or VSCode Microsoft C++ Plugin. 

Also update your compiler regularly. They might have Intellisense improvements.

#### As of July 16th 2020, Visual Studio 2019 and VS Build Tools 2019 are at v16.6.4

---
## Step 1.

### You've just created a new project.
You might have Intellisense errors right away.

Don't worry about those errors just yet.

0.  Create your first public C++ class.
    * Press the Public button, during class creation, so it's highlighted.
    * Your public class will be created in newly created directories named Public and Private.

1. Close UE4
2. Build your project successfully (Important)
    * Creates a new Intermediate/Build directory needed for *.generated.h #includes
3. Close all files in your code editor and close the editor 
4. Go to your projects folder
5. Right click on your Unreal Engine Project File
6. Choose Generate Visual Studio Project Files
7. This will add new Include Directories in your project's Intellisense includes list.
    * Adds a Intermediate/Build directory containing *.generated.h & *.gen.cpp files
    * Adds Public and Private directories
8. Open up your code editor and rebuild the project.
9. Wait for Intellisense's first long initialization (Should only happen once)
    * Visual Studio
        * Takes about ~5 minutes
        * Click Icon lower left VS to see info
    * VSCode
        * Can take as much at ~30 minutes
        * This is do to unneeded files being included in current auto-generated config
        * More on this later
        * Fire icon is Default Intellisense
        * Cylinder icon is Tag Parser Intellisense (what takes so long)

#### Your code should be free of any Intellisense errors.

#### You don't have to wait to code if you don't want. You may see slowness/errors though until it's finished. Once the long Intellisense init is finished I'd close and reopen VS to refresh it.

---
## Step 2.
### Everyday build errors
#### You've changed header file outside class structure

> This usually happens after I've used some forward declarations, outside the class, in a header file. But fake errors can happen just by adding a single blank line. These happen because UE4 makes use of the \_\_LINE\_\_ macro.


##### (Only do these next steps if you have fake errors. If you don't have errors just Build normally.)

---
#### (2a.): You had no errors prior but now do when messing with a header file.

(There are 3 sections. A Universal method. One for VSCode and another for Visual Studio 2019)

**Universal (VSCode and VS2019)**

(I use the specific version for VSCode. Works more consistently.)

* Build your project successfully
* This creates a file Intellisense needs
* Do this as close to changing the header file as possible
* Close Visual Studio and reopen
* If the header is still erred go to step 2b.
* Note: If this is inconsistent try using the specific version, of step 2a., for your IDE
* You might even like the specific versions better than this Universal way.

**(VSCode)**

(This seems to consistently work)

* Close the ,fake error, header file in VSCode
* Close any CPP files that include the ,fake error, header
* Build the project successfully. (Must close the files before this happens)
* Building the project creates a file intellisense needs.
* Open the fake error file. It should be error free.
* Note: (Don't use the shortcut keys to reopen last closed file(s). It can cause an Intellisense freeze.)

* If error is still there try restarting VSCode.
* If still erred go to step 2b.

**(Visual Studio 2019)**

(I've only tested this a few times. I don't know if it's consistent)

* Build the project successfully.
* This creates a file Intellisense needs.
* The ,fake error, file will still have errors.
* Inside the fake error file, quickly create a blank line and delete it.
* This will retrigger Intellisense and remove the error.
* If error is still there try restarting Visual Studio
* If still erred go to step 2b.

#### (2b.): If there's still an error from step 2a.

* Add an arbitrary blank line to the fake erred file so intellisense gets triggered again.
* Wait 10-30 seconds for intellisense to finish (bottom fire icon)
* Close the header and any cpp file that includes it
* Build the project successfully
* Close Visual Studio and then reopen it
* Open file. Fake errors should be gone.
* Change back file and do step A if desired.
* If still errors. Repeating Step B a few times can, a lot of times, work.
* After you fix the harder Intellisense errors, Step A should work again after.

### If it still errors try step 4

### If it still errors try step 5

---
## Step 3.
### Everyday Build Errors
#### There are outliers that can be easily solved by adding the right include files.

#### (3a.) When doing stuff like this:

    GetWorld()->GetAuthGameMode()

This builds just fine but intellisense will error on GetWorld().

    pointer to incomplete class type is not allowed

These can be fixed just by adding #includes of the appropriate type. 

    #include "Engine/World.h"
     

#### (3b.) Another error sometimes occurs when using a derived class in the place of a base class parameter.
 
    argument of type "UAnimSequence *" is incompatible with parameter of type "UAnimSequenceBase *"

Just add the right #include

    #include "Animation/AnimSequence.h"

---
## Step 4. 
### Intellisense reset

#### VSCode:
###### Put this setting in either a user or project config file.
    "C_Cpp.intelliSenseCacheSize": 0

##### I actually recommend keeping this setting. 
There's currently a problem with header files deleting/writing data during creation. Default Intellisense cache files can be around 1 Gigabyte each in UE4. When you type one line in a header it deletes and writes this ~1 GB file every time.

###### (Using Build Tools for Visual Studio 2019. If using Visual Studio's(IDE) Intellisense Engine with VSCode it might act the same)

You can always delete this setting if you want to go back to default.

#### Visual Studio 2019 (Untested):

- Close Visual Studio
- Go to your project folder
- Open your .vs folder
- You may have to look up how to show hidden folders in your OS
- Search for a ipch folder somewhere inside your .vs folder
- Delete it

---
## Step 5.
### Big Reset

This step should be rare. Only do this as last resort.

There are 4 substeps A-D.


#### A: Close all files in Visual Studio

---
#### B: Generate Visual Studio Project Files

**There is a way to do this inside the UE4 Editor but don't do it that way.**

* Close your IDE(Visual Studio/VSCode)
* Close the UE4 editor.
* Now go to your project folder and right click on your Unreal Engine Project File. Choose Generate Visual Studio Project Files. (Even though it's says Visual Studio it'll still work with VSCode as long as that's what's set in the UE4 Editor)

This way is a little annoying because it will reset some IDE(Visual Studio) settings/config files. If you've changed any project settings from the default, they will be gone. But..

**This won't hurt any of your project files!**

This is a good option if nothing else has worked.

---
#### C: Delete *.gen.cpp and *.generated.h files
(Important to do this step after Step B:)

The easy way:

* Go to your project folder.
* Open the Intermediate folder.
* Delete the Build folder.

You can also just search for these files and delete them all.
Be careful when doing so and make sure you're only searching in the Intermediate\Build folder.

---
#### D: Open your project and Build it.

#### If this still doesn't work:
- Close any source code files you have open
- Do Step 4 (Reset Intellisense)
- Do Step 5 again

---
## Step 6.
### Intellisense Slowness/Weirdness

Coming soon™

## Step 7.
### UE4 Source Code Intellisense errors

This fix wont fix UE4 Source Code errors but you should be able to just hide them as long as you:

* Close any UE4 Source code files.
* Minimize the UE4 Folder in your Project folder view

Sometimes after you close a UE4 Source code file it'll still show with Intellisense errors. Try these:

* Open the UE4 Source code file back up and reclose it.
* Minimize the UE4 Folder in your Project folder view
* Restart your IDE(Visual Studio)

If you have a bunch of UE4 Source code fake intellisense errors:

* Go to Step 5


## Step 8.
### GetLifetimeReplicatedProps

Special functions, like GetLifetimeReplicatedProps, don't require a header signature. When you build your project, it's added to a special header file.
Sometimes this will mess up Intellisense.

If you've already tried Step 3 then try these:

* Make sure in your header file, that there is no mention of the function. 
* **It can't even be mentioned in a comment.**
* Close all files in Visual Studio and then close Visual Studio. 
* Do Step C, of Step 5 (Delete *.gen.cpp/*.generated.h)
* Open up Visual Studio and Build project.
* If still errors do all of Step 5

## Step 9.
### UE4 4.25.0/4.25.1/4.25.2 Defines bug

#### VSCode only (but could apply to other IDEs):

There's currently a bug with these versions where Intellisense defines aren't being generated. You can solve this by doing these steps.

- Build your current project successfully (This bug doesn't affect the Build proccess)
- Search your project directory for the file Definitions.YourProjectName.h (replace YourProjectName with your actual project name)
- Open the file and copy the contents to your clipboard
- In your project's .vscode directory, open the c_cpp_properties.json file
- Find the line "defines": []
- Paste the clipboard contents inbetween []
- Go to the Edit menu and select Replace
- In the window that pops up make sure .* is highlighted (Use Regular Expressions)
- On the top text line paste this:

      #define ([\w_()]*) ([\w".\-()_]*)
- On the bottom text line paste this(including comma):

      "$1=$2",
- Click the Replace All button
- Remove any lines starting with #undef
- Scroll down and find errors having to do with quotes inside quotes.
  - You'll need to escape the inside quotes.
  - Example: "UBT_MODULE_MANIFEST="UE4Editor.modules"",
  - Becomes: "UBT_MODULE_MANIFEST=\\"UE4Editor.modules\\"",
  - The other two defines on my system that need this are UBT_MODULE_MANIFEST_DEBUGGAME and UE_APP_NAME
  - Your system maybe different
- Scroll all the way down to the end and remove last comma that's inside the defines array
- Right click on the the open file and select Format Document if needed
- Defines bug should be gone

### Note: If you ever Generate Project Files you'll have to redo these steps. Don't use a backup copy since the file could update with the Generate Project Files command.
