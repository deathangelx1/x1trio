.class Lorg/xbmc/xbmc/Splash$Work;
.super Landroid/os/AsyncTask;
.source "Splash.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/xbmc/xbmc/Splash;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Work"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private mProgressStatus:I

.field private mSplash:Lorg/xbmc/xbmc/Splash;

.field final synthetic this$0:Lorg/xbmc/xbmc/Splash;


# direct methods
.method public constructor <init>(Lorg/xbmc/xbmc/Splash;Lorg/xbmc/xbmc/Splash;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 83
    iput-object p1, p0, Lorg/xbmc/xbmc/Splash$Work;->this$0:Lorg/xbmc/xbmc/Splash;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 80
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/xbmc/xbmc/Splash$Work;->mSplash:Lorg/xbmc/xbmc/Splash;

    .line 81
    const/4 v0, 0x0

    iput v0, p0, Lorg/xbmc/xbmc/Splash$Work;->mProgressStatus:I

    .line 84
    iput-object p2, p0, Lorg/xbmc/xbmc/Splash$Work;->mSplash:Lorg/xbmc/xbmc/Splash;

    .line 85
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 13
    .parameter

    .prologue
    const/16 v1, 0x1000

    const/4 v12, 0x1

    const/4 v11, -0x1

    const/4 v10, 0x0

    .line 89
    iget-object v0, p0, Lorg/xbmc/xbmc/Splash$Work;->this$0:Lorg/xbmc/xbmc/Splash;

    #getter for: Lorg/xbmc/xbmc/Splash;->fApkDir:Ljava/io/File;
    invoke-static {v0}, Lorg/xbmc/xbmc/Splash;->access$000(Lorg/xbmc/xbmc/Splash;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 95
    new-array v1, v1, [B

    .line 98
    :try_start_0
    new-instance v2, Ljava/util/zip/ZipFile;

    iget-object v0, p0, Lorg/xbmc/xbmc/Splash$Work;->this$0:Lorg/xbmc/xbmc/Splash;

    #getter for: Lorg/xbmc/xbmc/Splash;->sPackagePath:Ljava/lang/String;
    invoke-static {v0}, Lorg/xbmc/xbmc/Splash;->access$100(Lorg/xbmc/xbmc/Splash;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V

    .line 99
    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v3

    .line 100
    iget-object v0, p0, Lorg/xbmc/xbmc/Splash$Work;->this$0:Lorg/xbmc/xbmc/Splash;

    #getter for: Lorg/xbmc/xbmc/Splash;->mProgress:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lorg/xbmc/xbmc/Splash;->access$200(Lorg/xbmc/xbmc/Splash;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 101
    iget-object v0, p0, Lorg/xbmc/xbmc/Splash$Work;->this$0:Lorg/xbmc/xbmc/Splash;

    #getter for: Lorg/xbmc/xbmc/Splash;->mProgress:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lorg/xbmc/xbmc/Splash;->access$200(Lorg/xbmc/xbmc/Splash;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->size()I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 103
    iget-object v0, p0, Lorg/xbmc/xbmc/Splash$Work;->this$0:Lorg/xbmc/xbmc/Splash;

    sget-object v4, Lorg/xbmc/xbmc/Splash$State;->Caching:Lorg/xbmc/xbmc/Splash$State;

    #setter for: Lorg/xbmc/xbmc/Splash;->mState:Lorg/xbmc/xbmc/Splash$State;
    invoke-static {v0, v4}, Lorg/xbmc/xbmc/Splash;->access$302(Lorg/xbmc/xbmc/Splash;Lorg/xbmc/xbmc/Splash$State;)Lorg/xbmc/xbmc/Splash$State;

    .line 104
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Integer;

    const/4 v4, 0x0

    iget v5, p0, Lorg/xbmc/xbmc/Splash$Work;->mProgressStatus:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v0, v4

    invoke-virtual {p0, v0}, Lorg/xbmc/xbmc/Splash$Work;->publishProgress([Ljava/lang/Object;)V

    .line 105
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 107
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Integer;

    const/4 v4, 0x0

    iget v5, p0, Lorg/xbmc/xbmc/Splash$Work;->mProgressStatus:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lorg/xbmc/xbmc/Splash$Work;->mProgressStatus:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v0, v4

    invoke-virtual {p0, v0}, Lorg/xbmc/xbmc/Splash$Work;->publishProgress([Ljava/lang/Object;)V

    .line 109
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/zip/ZipEntry;

    .line 111
    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "assets/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 113
    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "assets/python2.6"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 116
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lorg/xbmc/xbmc/Splash$Work;->this$0:Lorg/xbmc/xbmc/Splash;

    #getter for: Lorg/xbmc/xbmc/Splash;->sApkDir:Ljava/lang/String;
    invoke-static {v5}, Lorg/xbmc/xbmc/Splash;->access$400(Lorg/xbmc/xbmc/Splash;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 117
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 118
    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 120
    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 158
    :catch_0
    move-exception v0

    .line 159
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 160
    iget-object v0, p0, Lorg/xbmc/xbmc/Splash$Work;->this$0:Lorg/xbmc/xbmc/Splash;

    const-string v1, "Cannot find package."

    #setter for: Lorg/xbmc/xbmc/Splash;->mErrorMsg:Ljava/lang/String;
    invoke-static {v0, v1}, Lorg/xbmc/xbmc/Splash;->access$602(Lorg/xbmc/xbmc/Splash;Ljava/lang/String;)Ljava/lang/String;

    .line 161
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 171
    :goto_1
    return-object v0

    .line 129
    :cond_1
    :try_start_1
    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getTime()J

    move-result-wide v6

    invoke-virtual {v5}, Ljava/io/File;->lastModified()J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-eqz v6, :cond_0

    .line 133
    invoke-virtual {v5}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 136
    :try_start_2
    invoke-virtual {v2, v0}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v6

    .line 137
    new-instance v7, Ljava/io/BufferedOutputStream;

    new-instance v8, Ljava/io/FileOutputStream;

    invoke-direct {v8, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v7, v8}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 139
    :goto_2
    const/4 v4, 0x0

    const/16 v8, 0x1000

    invoke-virtual {v6, v1, v4, v8}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    if-le v4, v11, :cond_2

    .line 140
    const/4 v8, 0x0

    invoke-virtual {v7, v1, v8, v4}, Ljava/io/BufferedOutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    .line 149
    :catch_1
    move-exception v0

    .line 150
    :try_start_3
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_0

    .line 162
    :catch_2
    move-exception v0

    .line 163
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 164
    iget-object v0, p0, Lorg/xbmc/xbmc/Splash$Work;->this$0:Lorg/xbmc/xbmc/Splash;

    const-string v1, "Cannot read package."

    #setter for: Lorg/xbmc/xbmc/Splash;->mErrorMsg:Ljava/lang/String;
    invoke-static {v0, v1}, Lorg/xbmc/xbmc/Splash;->access$602(Lorg/xbmc/xbmc/Splash;Ljava/lang/String;)Ljava/lang/String;

    .line 165
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_1

    .line 142
    :cond_2
    :try_start_4
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    .line 143
    invoke-virtual {v7}, Ljava/io/BufferedOutputStream;->close()V

    .line 148
    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getTime()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/io/File;->setLastModified(J)Z
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_0

    .line 154
    :cond_3
    :try_start_5
    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->close()V

    .line 156
    iget-object v0, p0, Lorg/xbmc/xbmc/Splash$Work;->this$0:Lorg/xbmc/xbmc/Splash;

    #getter for: Lorg/xbmc/xbmc/Splash;->fApkDir:Ljava/io/File;
    invoke-static {v0}, Lorg/xbmc/xbmc/Splash;->access$000(Lorg/xbmc/xbmc/Splash;)Ljava/io/File;

    move-result-object v0

    iget-object v1, p0, Lorg/xbmc/xbmc/Splash$Work;->this$0:Lorg/xbmc/xbmc/Splash;

    #getter for: Lorg/xbmc/xbmc/Splash;->fPackagePath:Ljava/io/File;
    invoke-static {v1}, Lorg/xbmc/xbmc/Splash;->access$500(Lorg/xbmc/xbmc/Splash;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/io/File;->setLastModified(J)Z
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 168
    iget-object v0, p0, Lorg/xbmc/xbmc/Splash$Work;->this$0:Lorg/xbmc/xbmc/Splash;

    sget-object v1, Lorg/xbmc/xbmc/Splash$State;->StartingXBMC:Lorg/xbmc/xbmc/Splash$State;

    #setter for: Lorg/xbmc/xbmc/Splash;->mState:Lorg/xbmc/xbmc/Splash$State;
    invoke-static {v0, v1}, Lorg/xbmc/xbmc/Splash;->access$302(Lorg/xbmc/xbmc/Splash;Lorg/xbmc/xbmc/Splash$State;)Lorg/xbmc/xbmc/Splash$State;

    .line 169
    new-array v0, v12, [Ljava/lang/Integer;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v10

    invoke-virtual {p0, v0}, Lorg/xbmc/xbmc/Splash$Work;->publishProgress([Ljava/lang/Object;)V

    .line 171
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 78
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lorg/xbmc/xbmc/Splash$Work;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 4
    .parameter

    .prologue
    .line 195
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 196
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gez v0, :cond_0

    .line 197
    iget-object v0, p0, Lorg/xbmc/xbmc/Splash$Work;->this$0:Lorg/xbmc/xbmc/Splash;

    iget-object v1, p0, Lorg/xbmc/xbmc/Splash$Work;->mSplash:Lorg/xbmc/xbmc/Splash;

    const-string v2, "Error"

    iget-object v3, p0, Lorg/xbmc/xbmc/Splash$Work;->this$0:Lorg/xbmc/xbmc/Splash;

    #getter for: Lorg/xbmc/xbmc/Splash;->mErrorMsg:Ljava/lang/String;
    invoke-static {v3}, Lorg/xbmc/xbmc/Splash;->access$600(Lorg/xbmc/xbmc/Splash;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lorg/xbmc/xbmc/Splash;->showErrorDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    :goto_0
    return-void

    .line 201
    :cond_0
    iget-object v0, p0, Lorg/xbmc/xbmc/Splash$Work;->this$0:Lorg/xbmc/xbmc/Splash;

    invoke-virtual {v0}, Lorg/xbmc/xbmc/Splash;->startXBMC()V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 78
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lorg/xbmc/xbmc/Splash$Work;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 176
    sget-object v0, Lorg/xbmc/xbmc/Splash$2;->$SwitchMap$org$xbmc$xbmc$Splash$State:[I

    iget-object v1, p0, Lorg/xbmc/xbmc/Splash$Work;->this$0:Lorg/xbmc/xbmc/Splash;

    #getter for: Lorg/xbmc/xbmc/Splash;->mState:Lorg/xbmc/xbmc/Splash$State;
    invoke-static {v1}, Lorg/xbmc/xbmc/Splash;->access$300(Lorg/xbmc/xbmc/Splash;)Lorg/xbmc/xbmc/Splash$State;

    move-result-object v1

    invoke-virtual {v1}, Lorg/xbmc/xbmc/Splash$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 191
    :goto_0
    return-void

    .line 178
    :pswitch_0
    iget-object v0, p0, Lorg/xbmc/xbmc/Splash$Work;->mSplash:Lorg/xbmc/xbmc/Splash;

    #getter for: Lorg/xbmc/xbmc/Splash;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lorg/xbmc/xbmc/Splash;->access$700(Lorg/xbmc/xbmc/Splash;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "Checking package validity..."

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 179
    iget-object v0, p0, Lorg/xbmc/xbmc/Splash$Work;->mSplash:Lorg/xbmc/xbmc/Splash;

    #getter for: Lorg/xbmc/xbmc/Splash;->mProgress:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lorg/xbmc/xbmc/Splash;->access$200(Lorg/xbmc/xbmc/Splash;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0

    .line 182
    :pswitch_1
    iget-object v0, p0, Lorg/xbmc/xbmc/Splash$Work;->mSplash:Lorg/xbmc/xbmc/Splash;

    #getter for: Lorg/xbmc/xbmc/Splash;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lorg/xbmc/xbmc/Splash;->access$700(Lorg/xbmc/xbmc/Splash;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "Preparing for first run. Please wait..."

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 183
    iget-object v0, p0, Lorg/xbmc/xbmc/Splash$Work;->mSplash:Lorg/xbmc/xbmc/Splash;

    #getter for: Lorg/xbmc/xbmc/Splash;->mProgress:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lorg/xbmc/xbmc/Splash;->access$200(Lorg/xbmc/xbmc/Splash;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 184
    iget-object v0, p0, Lorg/xbmc/xbmc/Splash$Work;->mSplash:Lorg/xbmc/xbmc/Splash;

    #getter for: Lorg/xbmc/xbmc/Splash;->mProgress:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lorg/xbmc/xbmc/Splash;->access$200(Lorg/xbmc/xbmc/Splash;)Landroid/widget/ProgressBar;

    move-result-object v0

    aget-object v1, p1, v2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto :goto_0

    .line 187
    :pswitch_2
    iget-object v0, p0, Lorg/xbmc/xbmc/Splash$Work;->mSplash:Lorg/xbmc/xbmc/Splash;

    #getter for: Lorg/xbmc/xbmc/Splash;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lorg/xbmc/xbmc/Splash;->access$700(Lorg/xbmc/xbmc/Splash;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "Starting XBMC..."

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 188
    iget-object v0, p0, Lorg/xbmc/xbmc/Splash$Work;->mSplash:Lorg/xbmc/xbmc/Splash;

    #getter for: Lorg/xbmc/xbmc/Splash;->mProgress:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lorg/xbmc/xbmc/Splash;->access$200(Lorg/xbmc/xbmc/Splash;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0

    .line 176
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 78
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lorg/xbmc/xbmc/Splash$Work;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
