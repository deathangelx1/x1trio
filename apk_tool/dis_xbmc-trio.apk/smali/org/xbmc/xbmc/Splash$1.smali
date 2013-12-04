.class Lorg/xbmc/xbmc/Splash$1;
.super Ljava/lang/Object;
.source "Splash.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/xbmc/xbmc/Splash;->showErrorDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/xbmc/xbmc/Splash;


# direct methods
.method constructor <init>(Lorg/xbmc/xbmc/Splash;)V
    .locals 0
    .parameter

    .prologue
    .line 62
    iput-object p1, p0, Lorg/xbmc/xbmc/Splash$1;->this$0:Lorg/xbmc/xbmc/Splash;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 64
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 65
    iget-object v0, p0, Lorg/xbmc/xbmc/Splash$1;->this$0:Lorg/xbmc/xbmc/Splash;

    invoke-virtual {v0}, Lorg/xbmc/xbmc/Splash;->finish()V

    .line 66
    return-void
.end method
