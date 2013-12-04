.class public Lorg/xbmc/xbmc/Splash;
.super Landroid/app/Activity;
.source "Splash.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/xbmc/xbmc/Splash$2;,
        Lorg/xbmc/xbmc/Splash$Work;,
        Lorg/xbmc/xbmc/Splash$State;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Splash"


# instance fields
.field private fApkDir:Ljava/io/File;

.field private fPackagePath:Ljava/io/File;

.field private mCpuinfo:Ljava/lang/String;

.field private mErrorMsg:Ljava/lang/String;

.field private mProgress:Landroid/widget/ProgressBar;

.field private mState:Lorg/xbmc/xbmc/Splash$State;

.field private mTextView:Landroid/widget/TextView;

.field public myAlertDialog:Landroid/app/AlertDialog;

.field private sApkDir:Ljava/lang/String;

.field private sPackagePath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 32
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 40
    const-string v0, ""

    iput-object v0, p0, Lorg/xbmc/xbmc/Splash;->mCpuinfo:Ljava/lang/String;

    .line 41
    const-string v0, ""

    iput-object v0, p0, Lorg/xbmc/xbmc/Splash;->mErrorMsg:Ljava/lang/String;

    .line 43
    iput-object v1, p0, Lorg/xbmc/xbmc/Splash;->mProgress:Landroid/widget/ProgressBar;

    .line 44
    iput-object v1, p0, Lorg/xbmc/xbmc/Splash;->mTextView:Landroid/widget/TextView;

    .line 45
    sget-object v0, Lorg/xbmc/xbmc/Splash$State;->Uninitialized:Lorg/xbmc/xbmc/Splash$State;

    iput-object v0, p0, Lorg/xbmc/xbmc/Splash;->mState:Lorg/xbmc/xbmc/Splash$State;

    .line 78
    return-void
.end method

.method static synthetic access$000(Lorg/xbmc/xbmc/Splash;)Ljava/io/File;
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lorg/xbmc/xbmc/Splash;->fApkDir:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$100(Lorg/xbmc/xbmc/Splash;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lorg/xbmc/xbmc/Splash;->sPackagePath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lorg/xbmc/xbmc/Splash;)Landroid/widget/ProgressBar;
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lorg/xbmc/xbmc/Splash;->mProgress:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$300(Lorg/xbmc/xbmc/Splash;)Lorg/xbmc/xbmc/Splash$State;
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lorg/xbmc/xbmc/Splash;->mState:Lorg/xbmc/xbmc/Splash$State;

    return-object v0
.end method

.method static synthetic access$302(Lorg/xbmc/xbmc/Splash;Lorg/xbmc/xbmc/Splash$State;)Lorg/xbmc/xbmc/Splash$State;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 32
    iput-object p1, p0, Lorg/xbmc/xbmc/Splash;->mState:Lorg/xbmc/xbmc/Splash$State;

    return-object p1
.end method

.method static synthetic access$400(Lorg/xbmc/xbmc/Splash;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lorg/xbmc/xbmc/Splash;->sApkDir:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lorg/xbmc/xbmc/Splash;)Ljava/io/File;
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lorg/xbmc/xbmc/Splash;->fPackagePath:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$600(Lorg/xbmc/xbmc/Splash;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lorg/xbmc/xbmc/Splash;->mErrorMsg:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$602(Lorg/xbmc/xbmc/Splash;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 32
    iput-object p1, p0, Lorg/xbmc/xbmc/Splash;->mErrorMsg:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$700(Lorg/xbmc/xbmc/Splash;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lorg/xbmc/xbmc/Splash;->mTextView:Landroid/widget/TextView;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter

    .prologue
    .line 254
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 257
    invoke-virtual {p0}, Lorg/xbmc/xbmc/Splash;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 259
    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    .line 261
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 262
    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ComponentInfo{org.xbmc.xbmc/android.app.NativeActivity}"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 265
    invoke-virtual {p0}, Lorg/xbmc/xbmc/Splash;->startXBMC()V

    .line 351
    :goto_0
    return-void

    .line 269
    :cond_1
    sget-object v0, Lorg/xbmc/xbmc/Splash$State;->Checking:Lorg/xbmc/xbmc/Splash$State;

    iput-object v0, p0, Lorg/xbmc/xbmc/Splash;->mState:Lorg/xbmc/xbmc/Splash$State;

    .line 270
    const-string v0, "Splash"

    const-string v1, "-------->>> onCreate() : State.Checking"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    iget-object v0, p0, Lorg/xbmc/xbmc/Splash;->mState:Lorg/xbmc/xbmc/Splash$State;

    sget-object v1, Lorg/xbmc/xbmc/Splash$State;->InError:Lorg/xbmc/xbmc/Splash$State;

    if-eq v0, v1, :cond_2

    .line 291
    invoke-virtual {p0}, Lorg/xbmc/xbmc/Splash;->getPackageResourcePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/xbmc/xbmc/Splash;->sPackagePath:Ljava/lang/String;

    .line 293
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lorg/xbmc/xbmc/Splash;->sPackagePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/xbmc/xbmc/Splash;->fPackagePath:Ljava/io/File;

    .line 294
    invoke-virtual {p0}, Lorg/xbmc/xbmc/Splash;->getCacheDir()Ljava/io/File;

    move-result-object v0

    .line 295
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/apk"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/xbmc/xbmc/Splash;->sApkDir:Ljava/lang/String;

    .line 297
    const-string v0, "Splash"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-------->>> onCreate() : sPackagePath = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/xbmc/xbmc/Splash;->sPackagePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    const-string v0, "Splash"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-------->>> onCreate() : sApkDir = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/xbmc/xbmc/Splash;->sApkDir:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lorg/xbmc/xbmc/Splash;->sApkDir:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/xbmc/xbmc/Splash;->fApkDir:Ljava/io/File;

    .line 301
    iget-object v0, p0, Lorg/xbmc/xbmc/Splash;->fApkDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 303
    const-string v0, "Splash"

    const-string v1, "-------->>> onCreate() : fApkDir.exists() = true"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    :goto_1
    const-string v0, "Splash"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-------->>> onCreate() : fApkDir.lastModified() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/xbmc/xbmc/Splash;->fApkDir:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", fPackagePath.lastModified() = %d"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/xbmc/xbmc/Splash;->fPackagePath:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    iget-object v0, p0, Lorg/xbmc/xbmc/Splash;->fApkDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 316
    sget-object v0, Lorg/xbmc/xbmc/Splash$State;->StartingXBMC:Lorg/xbmc/xbmc/Splash$State;

    iput-object v0, p0, Lorg/xbmc/xbmc/Splash;->mState:Lorg/xbmc/xbmc/Splash$State;

    .line 317
    const-string v0, "Splash"

    const-string v1, ">>> mState == State.StartingXBMC <<<"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    :cond_2
    iget-object v0, p0, Lorg/xbmc/xbmc/Splash;->mState:Lorg/xbmc/xbmc/Splash$State;

    sget-object v1, Lorg/xbmc/xbmc/Splash$State;->StartingXBMC:Lorg/xbmc/xbmc/Splash$State;

    if-ne v0, v1, :cond_4

    .line 332
    const-string v0, "Splash"

    const-string v1, ">>> startXBMC <<<"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    invoke-virtual {p0}, Lorg/xbmc/xbmc/Splash;->startXBMC()V

    goto/16 :goto_0

    .line 307
    :cond_3
    const-string v0, "Splash"

    const-string v1, "-------->>> onCreate() : fApkDir.exists() = false"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 338
    :cond_4
    const/high16 v0, 0x7f03

    invoke-virtual {p0, v0}, Lorg/xbmc/xbmc/Splash;->setContentView(I)V

    .line 340
    const v0, 0x7f050001

    invoke-virtual {p0, v0}, Lorg/xbmc/xbmc/Splash;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lorg/xbmc/xbmc/Splash;->mProgress:Landroid/widget/ProgressBar;

    .line 341
    const v0, 0x7f050002

    invoke-virtual {p0, v0}, Lorg/xbmc/xbmc/Splash;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/xbmc/xbmc/Splash;->mTextView:Landroid/widget/TextView;

    .line 343
    iget-object v0, p0, Lorg/xbmc/xbmc/Splash;->mState:Lorg/xbmc/xbmc/Splash$State;

    sget-object v1, Lorg/xbmc/xbmc/Splash$State;->InError:Lorg/xbmc/xbmc/Splash$State;

    if-ne v0, v1, :cond_5

    .line 344
    const-string v0, "Error"

    iget-object v1, p0, Lorg/xbmc/xbmc/Splash;->mErrorMsg:Ljava/lang/String;

    invoke-virtual {p0, p0, v0, v1}, Lorg/xbmc/xbmc/Splash;->showErrorDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 348
    :cond_5
    const-string v0, "Splash"

    const-string v1, "-------->>> onCreate() : Work(this).execute()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    new-instance v0, Lorg/xbmc/xbmc/Splash$Work;

    invoke-direct {v0, p0, p0}, Lorg/xbmc/xbmc/Splash$Work;-><init>(Lorg/xbmc/xbmc/Splash;Lorg/xbmc/xbmc/Splash;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lorg/xbmc/xbmc/Splash$Work;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0
.end method

.method public showErrorDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 54
    iget-object v0, p0, Lorg/xbmc/xbmc/Splash;->myAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/xbmc/xbmc/Splash;->myAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    :goto_0
    return-void

    .line 57
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 58
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 59
    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 60
    invoke-static {p3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 61
    const-string v1, "Exit"

    new-instance v2, Lorg/xbmc/xbmc/Splash$1;

    invoke-direct {v2, p0}, Lorg/xbmc/xbmc/Splash$1;-><init>(Lorg/xbmc/xbmc/Splash;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 68
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 69
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lorg/xbmc/xbmc/Splash;->myAlertDialog:Landroid/app/AlertDialog;

    .line 70
    iget-object v0, p0, Lorg/xbmc/xbmc/Splash;->myAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 73
    iget-object v0, p0, Lorg/xbmc/xbmc/Splash;->myAlertDialog:Landroid/app/AlertDialog;

    const v1, 0x102000b

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    goto :goto_0
.end method

.method protected startXBMC()V
    .locals 2

    .prologue
    .line 246
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 247
    const-class v1, Landroid/app/NativeActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 248
    invoke-virtual {p0, v0}, Lorg/xbmc/xbmc/Splash;->startActivity(Landroid/content/Intent;)V

    .line 249
    invoke-virtual {p0}, Lorg/xbmc/xbmc/Splash;->finish()V

    .line 250
    return-void
.end method
