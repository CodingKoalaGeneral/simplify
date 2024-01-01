.class public final Ltdr/util/BuildConfig;
.super Ljava/lang/Object;


# static fields
.field public static final BUILD_TYPE:Ljava/lang/String; = "debug"

.field public static final DEBUG:Z

.field public static final LIBRARY_PACKAGE_NAME:Ljava/lang/String; = "tdr.util"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    const-string v0, "true"

    #@2
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    #@5
    move-result v0

    #@6
    sput-boolean v0, Ltdr/util/BuildConfig;->DEBUG:Z

    #@8
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method
