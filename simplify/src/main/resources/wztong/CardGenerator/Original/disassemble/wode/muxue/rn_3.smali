.class public Lwode/muxue/rn_3;
.super Lrn_34/rn_35/rn_36/rn_4657;
.source "rn_3.java"


# instance fields
.field public rn_4:Lrn_34/rn_35/rn_36/rn_567;

.field public rn_5:Lrn_34/rn_35/rn_36/rn_4311;


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .line 9
    invoke-direct {p0}, Lrn_34/rn_35/rn_36/rn_4657;-><init>()V

    #@3
    return-void
.end method

.method static synthetic access$000(Lwode/muxue/rn_3;)V
    .locals 0

    #@0
    .line 9
    invoke-direct {p0}, Lwode/muxue/rn_3;->rn_7()V

    #@3
    return-void
.end method

.method private rn_7()V
    .locals 2

    #@0
    .line 43
    const-string v0, "\u5185\u5bb9\u5df2\u590d\u5236\u5230\u526a\u5207\u677f"

    #@2
    const/4 v1, 0x0

    #@3
    invoke-static {p0, v0, v1}, Lrn_34/rn_35/rn_36/rn_4580;->rn_4636(Landroid/app/Activity;Ljava/lang/Object;Z)V

    #@6
    .line 44
    invoke-static {p0}, Lrn_34/rn_35/rn_36/rn_4580;->rn_4632(Landroid/app/Activity;)Landroid/content/Intent;

    #@9
    move-result-object v0

    #@a
    const-string v1, "1"

    #@c
    invoke-static {v0, v1}, Lrn_34/rn_35/rn_36/rn_446;->rn_450(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    #@f
    move-result-object v0

    #@10
    invoke-static {p0, v0}, Lrn_34/rn_35/rn_36/rn_3572;->rn_3589(Landroid/content/Context;Ljava/lang/String;)V

    #@13
    .line 45
    return-void
.end method


# virtual methods
.method public onInit()V
    .locals 4

    #@0
    .line 11
    new-instance v0, Lrn_34/rn_35/rn_36/rn_567;

    #@2
    invoke-direct {v0, p0}, Lrn_34/rn_35/rn_36/rn_567;-><init>(Landroid/content/Context;)V

    #@5
    iput-object v0, p0, Lwode/muxue/rn_3;->rn_4:Lrn_34/rn_35/rn_36/rn_567;

    #@7
    .line 12
    invoke-virtual {p0, v0}, Lwode/muxue/rn_3;->setLayout(Lrn_34/rn_35/rn_36/rn_4206;)V

    #@a
    .line 13
    new-instance v0, Lrn_34/rn_35/rn_36/rn_4311;

    #@c
    invoke-direct {v0, p0}, Lrn_34/rn_35/rn_36/rn_4311;-><init>(Landroid/content/Context;)V

    #@f
    iput-object v0, p0, Lwode/muxue/rn_3;->rn_5:Lrn_34/rn_35/rn_36/rn_4311;

    #@11
    .line 14
    iget-object v0, p0, Lwode/muxue/rn_3;->rn_4:Lrn_34/rn_35/rn_36/rn_567;

    #@13
    const/4 v1, -0x1

    #@14
    invoke-virtual {v0, v1}, Lrn_34/rn_35/rn_36/rn_567;->rn_274(I)V

    #@17
    .line 15
    iget-object v0, p0, Lwode/muxue/rn_3;->rn_4:Lrn_34/rn_35/rn_36/rn_567;

    #@19
    invoke-virtual {v0, v1}, Lrn_34/rn_35/rn_36/rn_567;->rn_272(I)V

    #@1c
    .line 16
    iget-object v0, p0, Lwode/muxue/rn_3;->rn_4:Lrn_34/rn_35/rn_36/rn_567;

    #@1e
    iget-object v2, p0, Lwode/muxue/rn_3;->rn_5:Lrn_34/rn_35/rn_36/rn_4311;

    #@20
    invoke-virtual {v0, v2}, Lrn_34/rn_35/rn_36/rn_567;->addComponent(Lrn_34/rn_35/rn_36/rn_4206;)V

    #@23
    .line 17
    iget-object v0, p0, Lwode/muxue/rn_3;->rn_5:Lrn_34/rn_35/rn_36/rn_4311;

    #@25
    invoke-virtual {v0, v1}, Lrn_34/rn_35/rn_36/rn_4311;->rn_274(I)V

    #@28
    .line 18
    iget-object v0, p0, Lwode/muxue/rn_3;->rn_5:Lrn_34/rn_35/rn_36/rn_4311;

    #@2a
    invoke-virtual {v0, v1}, Lrn_34/rn_35/rn_36/rn_4311;->rn_272(I)V

    #@2d
    .line 19
    iget-object v0, p0, Lwode/muxue/rn_3;->rn_5:Lrn_34/rn_35/rn_36/rn_4311;

    #@2f
    const/4 v1, 0x1

    #@30
    invoke-virtual {v0, v1}, Lrn_34/rn_35/rn_36/rn_4311;->rn_4316(Z)V

    #@33
    .line 20
    iget-object v0, p0, Lwode/muxue/rn_3;->rn_5:Lrn_34/rn_35/rn_36/rn_4311;

    #@35
    const/16 v1, 0x11

    #@37
    invoke-virtual {v0, v1}, Lrn_34/rn_35/rn_36/rn_4311;->rn_270(I)V

    #@3a
    .line 21
    iget-object v0, p0, Lwode/muxue/rn_3;->rn_4:Lrn_34/rn_35/rn_36/rn_567;

    #@3c
    iget-object v1, p0, Lwode/muxue/rn_3;->rn_5:Lrn_34/rn_35/rn_36/rn_4311;

    #@3e
    const-wide v2, -0x40b28240b780346eL    # -9.0E-4

    #@43
    invoke-virtual {v0, v1, v2, v3}, Lrn_34/rn_35/rn_36/rn_567;->rn_574(Lrn_34/rn_35/rn_36/rn_4206;D)V

    #@46
    .line 22
    iget-object v0, p0, Lwode/muxue/rn_3;->rn_4:Lrn_34/rn_35/rn_36/rn_567;

    #@48
    iget-object v1, p0, Lwode/muxue/rn_3;->rn_5:Lrn_34/rn_35/rn_36/rn_4311;

    #@4a
    const-wide v2, -0x40c5c91d14e3bcd3L    # -4.0E-4

    #@4f
    invoke-virtual {v0, v1, v2, v3}, Lrn_34/rn_35/rn_36/rn_567;->rn_577(Lrn_34/rn_35/rn_36/rn_4206;D)V

    #@52
    .line 23
    iget-object v0, p0, Lwode/muxue/rn_3;->rn_5:Lrn_34/rn_35/rn_36/rn_4311;

    #@54
    const/16 v1, 0x32

    #@56
    invoke-virtual {v0, v1}, Lrn_34/rn_35/rn_36/rn_4311;->rn_384(I)V

    #@59
    .line 24
    return-void
.end method

.method public rn_4659()V
    .locals 3

    #@0
    .line 31
    const/4 v0, 0x0

    #@1
    invoke-static {p0, v0}, Lrn_34/rn_35/rn_36/rn_4580;->rn_4586(Landroid/app/Activity;Z)V

    #@4
    .line 32
    iget-object v0, p0, Lwode/muxue/rn_3;->rn_5:Lrn_34/rn_35/rn_36/rn_4311;

    #@6
    invoke-static {p0}, Lrn_34/rn_35/rn_36/rn_4580;->rn_4632(Landroid/app/Activity;)Landroid/content/Intent;

    #@9
    move-result-object v1

    #@a
    const-string v2, "1"

    #@c
    invoke-static {v1, v2}, Lrn_34/rn_35/rn_36/rn_446;->rn_450(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    #@f
    move-result-object v1

    #@10
    invoke-virtual {v0, v1}, Lrn_34/rn_35/rn_36/rn_4311;->rn_378(Ljava/lang/String;)V

    #@13
    .line 33
    iget-object v0, p0, Lwode/muxue/rn_3;->rn_5:Lrn_34/rn_35/rn_36/rn_4311;

    #@15
    const/4 v1, 0x1

    #@16
    invoke-virtual {v0, v1}, Lrn_34/rn_35/rn_36/rn_4311;->rn_4284(Z)V

    #@19
    .line 34
    iget-object v0, p0, Lwode/muxue/rn_3;->rn_5:Lrn_34/rn_35/rn_36/rn_4311;

    #@1b
    new-instance v1, Lwode/muxue/rn_3$1;

    #@1d
    invoke-direct {v1, p0}, Lwode/muxue/rn_3$1;-><init>(Lwode/muxue/rn_3;)V

    #@20
    invoke-virtual {v0, v1}, Lrn_34/rn_35/rn_36/rn_4311;->rn_4295_s(Lrn_34/rn_35/rn_36/rn_4206$rn_4295_r;)V

    #@23
    .line 40
    return-void
.end method
