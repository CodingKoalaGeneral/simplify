.class Lrn_1/CardView$CardViewJellybeanMr1;
.super Lrn_1/CardView$CardViewEclairMr1;
.source "CardView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrn_1/CardView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CardViewJellybeanMr1"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .line 652
    invoke-direct {p0}, Lrn_1/CardView$CardViewEclairMr1;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public initStatic()V
    .locals 1

    #@0
    .line 656
    new-instance v0, Lrn_1/CardView$CardViewJellybeanMr1$1;

    #@2
    invoke-direct {v0, p0}, Lrn_1/CardView$CardViewJellybeanMr1$1;-><init>(Lrn_1/CardView$CardViewJellybeanMr1;)V

    #@5
    sput-object v0, Lrn_1/RoundRectDrawableWithShadow;->sRoundRectHelper:Lrn_1/RoundRectDrawableWithShadow$RoundRectHelper;

    #@7
    .line 664
    return-void
.end method
