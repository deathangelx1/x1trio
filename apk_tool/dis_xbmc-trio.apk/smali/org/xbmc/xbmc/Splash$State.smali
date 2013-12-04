.class public final enum Lorg/xbmc/xbmc/Splash$State;
.super Ljava/lang/Enum;
.source "Splash.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/xbmc/xbmc/Splash;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/xbmc/xbmc/Splash$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/xbmc/xbmc/Splash$State;

.field public static final enum Caching:Lorg/xbmc/xbmc/Splash$State;

.field public static final enum Checking:Lorg/xbmc/xbmc/Splash$State;

.field public static final enum InError:Lorg/xbmc/xbmc/Splash$State;

.field public static final enum StartingXBMC:Lorg/xbmc/xbmc/Splash$State;

.field public static final enum Uninitialized:Lorg/xbmc/xbmc/Splash$State;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 35
    new-instance v0, Lorg/xbmc/xbmc/Splash$State;

    const-string v1, "Uninitialized"

    invoke-direct {v0, v1, v2}, Lorg/xbmc/xbmc/Splash$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/xbmc/xbmc/Splash$State;->Uninitialized:Lorg/xbmc/xbmc/Splash$State;

    new-instance v0, Lorg/xbmc/xbmc/Splash$State;

    const-string v1, "InError"

    invoke-direct {v0, v1, v3}, Lorg/xbmc/xbmc/Splash$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/xbmc/xbmc/Splash$State;->InError:Lorg/xbmc/xbmc/Splash$State;

    new-instance v0, Lorg/xbmc/xbmc/Splash$State;

    const-string v1, "Checking"

    invoke-direct {v0, v1, v4}, Lorg/xbmc/xbmc/Splash$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/xbmc/xbmc/Splash$State;->Checking:Lorg/xbmc/xbmc/Splash$State;

    new-instance v0, Lorg/xbmc/xbmc/Splash$State;

    const-string v1, "Caching"

    invoke-direct {v0, v1, v5}, Lorg/xbmc/xbmc/Splash$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/xbmc/xbmc/Splash$State;->Caching:Lorg/xbmc/xbmc/Splash$State;

    new-instance v0, Lorg/xbmc/xbmc/Splash$State;

    const-string v1, "StartingXBMC"

    invoke-direct {v0, v1, v6}, Lorg/xbmc/xbmc/Splash$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/xbmc/xbmc/Splash$State;->StartingXBMC:Lorg/xbmc/xbmc/Splash$State;

    .line 34
    const/4 v0, 0x5

    new-array v0, v0, [Lorg/xbmc/xbmc/Splash$State;

    sget-object v1, Lorg/xbmc/xbmc/Splash$State;->Uninitialized:Lorg/xbmc/xbmc/Splash$State;

    aput-object v1, v0, v2

    sget-object v1, Lorg/xbmc/xbmc/Splash$State;->InError:Lorg/xbmc/xbmc/Splash$State;

    aput-object v1, v0, v3

    sget-object v1, Lorg/xbmc/xbmc/Splash$State;->Checking:Lorg/xbmc/xbmc/Splash$State;

    aput-object v1, v0, v4

    sget-object v1, Lorg/xbmc/xbmc/Splash$State;->Caching:Lorg/xbmc/xbmc/Splash$State;

    aput-object v1, v0, v5

    sget-object v1, Lorg/xbmc/xbmc/Splash$State;->StartingXBMC:Lorg/xbmc/xbmc/Splash$State;

    aput-object v1, v0, v6

    sput-object v0, Lorg/xbmc/xbmc/Splash$State;->$VALUES:[Lorg/xbmc/xbmc/Splash$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/xbmc/xbmc/Splash$State;
    .locals 1
    .parameter

    .prologue
    .line 34
    const-class v0, Lorg/xbmc/xbmc/Splash$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/xbmc/xbmc/Splash$State;

    return-object v0
.end method

.method public static values()[Lorg/xbmc/xbmc/Splash$State;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lorg/xbmc/xbmc/Splash$State;->$VALUES:[Lorg/xbmc/xbmc/Splash$State;

    invoke-virtual {v0}, [Lorg/xbmc/xbmc/Splash$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/xbmc/xbmc/Splash$State;

    return-object v0
.end method
