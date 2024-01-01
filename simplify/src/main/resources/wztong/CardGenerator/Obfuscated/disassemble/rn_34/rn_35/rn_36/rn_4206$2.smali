.class Lrn_34/rn_35/rn_36/rn_4206$2;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrn_34/rn_35/rn_36/rn_4206;->rn_418(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Lrn_34/rn_35/rn_36/rn_4206;


# direct methods
.method constructor <init>(Lrn_34/rn_35/rn_36/rn_4206;)V
    .locals 0

    #@0
    iput-object p1, p0, Lrn_34/rn_35/rn_36/rn_4206$2;->this$0:Lrn_34/rn_35/rn_36/rn_4206;

    #@2
    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 2

    #@0
    const-string v0, "\u06df\u06e8\u06e3"

    #@2
    invoke-static {v0}, Lrn_65/rn_66/rn_67/ۣۢۢۤ;->۟ۦ۟ۢۢ(Ljava/lang/Object;)I

    #@5
    move-result v0

    #@6
    :goto_0
    sparse-switch v0, :sswitch_data_0

    #@9
    goto :goto_0

    #@a
    :sswitch_0
    const/4 v0, 0x1

    #@b
    return v0

    #@c
    :sswitch_1
    invoke-static {}, Lrn_34/rn_35/rn_36/۟ۥ۟ۡۡ;->۟ۥۥۨۡ()I

    #@f
    move-result v0

    #@10
    if-ltz v0, :cond_0

    #@12
    invoke-static {}, Lrn_1/ۣ۟ۧۤۦ;->ۣ۟ۢۨۢ()I

    #@15
    const-string v0, "\u06e8\u06df\u06e6"

    #@17
    :goto_1
    invoke-static {v0}, Lrn_1/ۣ۟ۧۤۦ;->ۨۥ۟ۦ(Ljava/lang/Object;)I

    #@1a
    move-result v0

    #@1b
    goto :goto_0

    #@1c
    :cond_0
    const-string v0, "\u06df\u06e8\u06e3"

    #@1e
    goto :goto_1

    #@1f
    :sswitch_2
    sget-object v0, Lrn_34/rn_35/rn_36/۟ۥ۟ۡۡ;->۠۠۠:[S

    #@21
    iget-object v0, p0, Lrn_34/rn_35/rn_36/rn_4206$2;->this$0:Lrn_34/rn_35/rn_36/rn_4206;

    #@23
    const/16 v1, 0x9

    #@25
    invoke-virtual {v0, v1}, Lrn_34/rn_35/rn_36/rn_4206;->rn_4299(I)V

    #@28
    invoke-static {}, Lrn_65/rn_66/rn_67/۠ۨۨۦ;->ۨۨۦۥ()I

    #@2b
    move-result v0

    #@2c
    if-gtz v0, :cond_1

    #@2e
    :cond_1
    const-string v0, "\u06df\u06e4\u06e8"

    #@30
    invoke-static {v0}, Lrn_34/rn_35/rn_36/۟ۥ۟ۡۡ;->ۣۣ۟ۧۧ(Ljava/lang/Object;)I

    #@33
    move-result v0

    #@34
    goto :goto_0

    #@35
    nop

    #@36
    :sswitch_data_0
    .sparse-switch
        0x1aa7a3 -> :sswitch_0
        0x1aa81a -> :sswitch_2
        0x1ac5a6 -> :sswitch_1
    .end sparse-switch
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 9

    #@0
    const/4 v0, 0x0

    #@1
    const-string v1, "\u06e8\u06e1\u06e2"

    #@3
    invoke-static {v1}, Lrn_34/rn_35/rn_36/۟ۥ۟ۡۡ;->ۣۣ۟ۧۧ(Ljava/lang/Object;)I

    #@6
    move-result v8

    #@7
    move v1, v0

    #@8
    move v7, v0

    #@9
    move v4, v0

    #@a
    move v6, v0

    #@b
    move v2, v0

    #@c
    move v5, v0

    #@d
    move v3, v0

    #@e
    :goto_0
    sparse-switch v8, :sswitch_data_0

    #@11
    goto :goto_0

    #@12
    :sswitch_0
    const-string v0, "\u06df\u06df\u06e7"

    #@14
    move v3, v4

    #@15
    :goto_1
    invoke-static {v0}, Lrn_65/rn_66/rn_67/۠ۨۨۦ;->ۨۢ۠ۢ(Ljava/lang/Object;)I

    #@18
    move-result v0

    #@19
    move v8, v0

    #@1a
    goto :goto_0

    #@1b
    :sswitch_1
    if-lez v1, :cond_5

    #@1d
    invoke-static {}, Lrn_65/rn_66/rn_67/۠ۨۨۦ;->ۨۨۦۥ()I

    #@20
    move-result v0

    #@21
    if-gtz v0, :cond_0

    #@23
    const-string v0, "\u06e8\u06e1\u06e2"

    #@25
    :goto_2
    invoke-static {v0}, Lrn_65/rn_66/rn_67/ۣۢۢۤ;->۟ۦ۟ۢۢ(Ljava/lang/Object;)I

    #@28
    move-result v0

    #@29
    move v8, v0

    #@2a
    goto :goto_0

    #@2b
    :cond_0
    const-string v0, "\u06e6\u06e0\u06e1"

    #@2d
    goto :goto_2

    #@2e
    :sswitch_2
    sget-object v0, Lrn_65/rn_66/rn_67/۠ۨۨۦ;->ۢۡ۟ۥ:[S

    #@30
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    #@33
    move-result v0

    #@34
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    #@37
    move-result v1

    #@38
    sub-float/2addr v0, v1

    #@39
    float-to-int v1, v0

    #@3a
    invoke-static {}, Lrn_65/rn_66/rn_67/ۣۢۢۤ;->ۡۡۧ۠()I

    #@3d
    move-result v0

    #@3e
    if-gtz v0, :cond_1

    #@40
    :cond_1
    const-string v0, "\u06e0\u06df\u06e0"

    #@42
    goto :goto_1

    #@43
    :sswitch_3
    invoke-static {}, Ltdr/util/ۥۢ۠۟;->۟ۧۥۣ۟()I

    #@46
    move-result v0

    #@47
    if-ltz v0, :cond_2

    #@49
    invoke-static {}, Ltdr/util/ۥۢ۠۟;->۟ۧۥۣ۟()I

    #@4c
    const-string v0, "\u06e2\u06e4\u06e8"

    #@4e
    invoke-static {v0}, Lrn_1/ۣ۟ۧۤۦ;->ۨۥ۟ۦ(Ljava/lang/Object;)I

    #@51
    move-result v0

    #@52
    move v8, v0

    #@53
    goto :goto_0

    #@54
    :cond_2
    const-string v0, "\u06df\u06df\u06e7"

    #@56
    :goto_3
    invoke-static {v0}, Ltdr/util/ۥۢ۠۟;->۟ۢۡۨۡ(Ljava/lang/Object;)I

    #@59
    move-result v0

    #@5a
    move v8, v0

    #@5b
    goto :goto_0

    #@5c
    :sswitch_4
    const/4 v2, 0x4

    #@5d
    const-string v0, "\u06e5\u06e8\u06e8"

    #@5f
    goto :goto_1

    #@60
    :sswitch_5
    invoke-static {}, Lrn_65/rn_66/rn_67/ۣۢۢۤ;->ۡۡۧ۠()I

    #@63
    move-result v0

    #@64
    if-gtz v0, :cond_3

    #@66
    const-string v0, "\u06e2\u06e6\u06e0"

    #@68
    :goto_4
    invoke-static {v0}, Lrn_1/ۣ۟ۧۤۦ;->ۨۥ۟ۦ(Ljava/lang/Object;)I

    #@6b
    move-result v0

    #@6c
    move v8, v0

    #@6d
    goto :goto_0

    #@6e
    :cond_3
    const-string v0, "\u06e6\u06e4\u06e6"

    #@70
    invoke-static {v0}, Lrn_65/rn_66/rn_67/۠ۨۨۦ;->ۨۢ۠ۢ(Ljava/lang/Object;)I

    #@73
    move-result v0

    #@74
    move v8, v0

    #@75
    goto :goto_0

    #@76
    :sswitch_6
    iget-object v0, p0, Lrn_34/rn_35/rn_36/rn_4206$2;->this$0:Lrn_34/rn_35/rn_36/rn_4206;

    #@78
    invoke-virtual {v0, v3}, Lrn_34/rn_35/rn_36/rn_4206;->rn_4299(I)V

    #@7b
    invoke-static {}, Lrn_1/ۣ۟ۧۤۦ;->ۣ۟ۢۨۢ()I

    #@7e
    move-result v0

    #@7f
    if-gtz v0, :cond_4

    #@81
    invoke-static {}, Lrn_65/rn_66/rn_67/۠ۨۨۦ;->ۨۨۦۥ()I

    #@84
    const-string v0, "\u06e3\u06df\u06e2"

    #@86
    invoke-static {v0}, Ltdr/util/ۥۢ۠۟;->۟ۢۡۨۡ(Ljava/lang/Object;)I

    #@89
    move-result v0

    #@8a
    move v8, v0

    #@8b
    goto :goto_0

    #@8c
    :cond_4
    const-string v0, "\u06e4\u06e2\u06e0"

    #@8e
    :goto_5
    invoke-static {v0}, Lrn_1/ۣ۟ۧۤۦ;->ۨۥ۟ۦ(Ljava/lang/Object;)I

    #@91
    move-result v0

    #@92
    move v8, v0

    #@93
    goto/16 :goto_0

    #@95
    :cond_5
    :sswitch_7
    const-string v0, "\u06e0\u06e1\u06e0"

    #@97
    invoke-static {v0}, Lrn_65/rn_66/rn_67/ۣۢۢۤ;->۟ۦ۟ۢۢ(Ljava/lang/Object;)I

    #@9a
    move-result v0

    #@9b
    move v8, v0

    #@9c
    goto/16 :goto_0

    #@9e
    :sswitch_8
    const/4 v4, 0x7

    #@9f
    const-string v0, "\u06df\u06e4"

    #@a1
    goto :goto_3

    #@a2
    :cond_6
    :sswitch_9
    invoke-static {}, Lrn_34/rn_35/rn_36/۟ۥ۟ۡۡ;->۟ۥۥۨۡ()I

    #@a5
    move-result v0

    #@a6
    if-ltz v0, :cond_7

    #@a8
    const-string v0, "\u06df\u06e4\u06e5"

    #@aa
    goto :goto_3

    #@ab
    :cond_7
    const-string v0, "\u06e4\u06e0\u06e1"

    #@ad
    invoke-static {v0}, Lrn_1/ۣ۟ۧۤۦ;->ۨۥ۟ۦ(Ljava/lang/Object;)I

    #@b0
    move-result v0

    #@b1
    move v8, v0

    #@b2
    goto/16 :goto_0

    #@b4
    :sswitch_a
    const/4 v5, 0x5

    #@b5
    invoke-static {}, Ltdr/util/ۥۢ۠۟;->۟ۧۥۣ۟()I

    #@b8
    move-result v0

    #@b9
    if-ltz v0, :cond_8

    #@bb
    const-string v0, "\u06df\u06df\u06e7"

    #@bd
    :goto_6
    invoke-static {v0}, Lrn_1/ۣ۟ۧۤۦ;->ۨۥ۟ۦ(Ljava/lang/Object;)I

    #@c0
    move-result v0

    #@c1
    move v8, v0

    #@c2
    goto/16 :goto_0

    #@c4
    :cond_8
    const-string v0, "\u06e2\u06e6\u06e1"

    #@c6
    goto :goto_6

    #@c7
    :sswitch_b
    invoke-static {}, Lrn_1/ۣ۟ۧۤۦ;->ۣ۟ۢۨۢ()I

    #@ca
    move-result v0

    #@cb
    if-gtz v0, :cond_9

    #@cd
    invoke-static {}, Lrn_65/rn_66/rn_67/ۣۢۢۤ;->ۡۡۧ۠()I

    #@d0
    const-string v0, "\u06e8\u06df\u06e2"

    #@d2
    move v3, v5

    #@d3
    :goto_7
    invoke-static {v0}, Lrn_65/rn_66/rn_67/۠ۨۨۦ;->ۨۢ۠ۢ(Ljava/lang/Object;)I

    #@d6
    move-result v0

    #@d7
    move v8, v0

    #@d8
    goto/16 :goto_0

    #@da
    :cond_9
    const-string v0, "\u06e2\u06df\u06df"

    #@dc
    move v3, v5

    #@dd
    :goto_8
    invoke-static {v0}, Lrn_34/rn_35/rn_36/۟ۥ۟ۡۡ;->ۣۣ۟ۧۧ(Ljava/lang/Object;)I

    #@e0
    move-result v0

    #@e1
    move v8, v0

    #@e2
    goto/16 :goto_0

    #@e4
    :sswitch_c
    const/4 v0, 0x1

    #@e5
    return v0

    #@e6
    :sswitch_d
    invoke-static {}, Lrn_65/rn_66/rn_67/ۣۢۢۤ;->ۡۡۧ۠()I

    #@e9
    move-result v0

    #@ea
    if-gtz v0, :cond_a

    #@ec
    const-string v0, "\u06e6\u06e8\u06e7"

    #@ee
    invoke-static {v0}, Ltdr/util/ۥۢ۠۟;->۟ۢۡۨۡ(Ljava/lang/Object;)I

    #@f1
    move-result v0

    #@f2
    move v8, v0

    #@f3
    goto/16 :goto_0

    #@f5
    :cond_a
    const-string v0, "\u06e8\u06e3\u06e5"

    #@f7
    goto/16 :goto_2

    #@f9
    :sswitch_e
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    #@fc
    move-result v0

    #@fd
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    #@100
    move-result v7

    #@101
    sub-float/2addr v0, v7

    #@102
    float-to-int v0, v0

    #@103
    invoke-static {}, Lrn_34/rn_35/rn_36/۟ۥ۟ۡۡ;->۟ۥۥۨۡ()I

    #@106
    move-result v7

    #@107
    if-ltz v7, :cond_b

    #@109
    const-string v7, "\u06e3\u06e1\u06e4"

    #@10b
    invoke-static {v7}, Lrn_34/rn_35/rn_36/۟ۥ۟ۡۡ;->ۣۣ۟ۧۧ(Ljava/lang/Object;)I

    #@10e
    move-result v8

    #@10f
    move v7, v0

    #@110
    goto/16 :goto_0

    #@112
    :cond_b
    const-string v7, "\u06e7\u06e0\u06e0"

    #@114
    invoke-static {v7}, Lrn_65/rn_66/rn_67/ۣۢۢۤ;->۟ۦ۟ۢۢ(Ljava/lang/Object;)I

    #@117
    move-result v8

    #@118
    move v7, v0

    #@119
    goto/16 :goto_0

    #@11b
    :sswitch_f
    invoke-static {}, Lrn_65/rn_66/rn_67/ۣۢۢۤ;->ۡۡۧ۠()I

    #@11e
    move-result v0

    #@11f
    if-gtz v0, :cond_c

    #@121
    const-string v0, "\u06df\u06e4"

    #@123
    move v3, v2

    #@124
    :goto_9
    invoke-static {v0}, Ltdr/util/ۥۢ۠۟;->۟ۢۡۨۡ(Ljava/lang/Object;)I

    #@127
    move-result v0

    #@128
    move v8, v0

    #@129
    goto/16 :goto_0

    #@12b
    :cond_c
    const-string v0, "\u06e3\u06df\u06e2"

    #@12d
    invoke-static {v0}, Ltdr/util/ۥۢ۠۟;->۟ۢۡۨۡ(Ljava/lang/Object;)I

    #@130
    move-result v0

    #@131
    move v8, v0

    #@132
    move v3, v2

    #@133
    goto/16 :goto_0

    #@135
    :sswitch_10
    const-string v0, "\u06e8\u06e1\u06e2"

    #@137
    invoke-static {v0}, Lrn_65/rn_66/rn_67/۠ۨۨۦ;->ۨۢ۠ۢ(Ljava/lang/Object;)I

    #@13a
    move-result v0

    #@13b
    move v8, v0

    #@13c
    goto/16 :goto_0

    #@13e
    :sswitch_11
    invoke-static {}, Lrn_65/rn_66/rn_67/۠ۨۨۦ;->ۨۨۦۥ()I

    #@141
    move-result v0

    #@142
    if-gtz v0, :cond_d

    #@144
    const-string v0, "\u06e5\u06e8\u06e8"

    #@146
    invoke-static {v0}, Lrn_65/rn_66/rn_67/ۣۢۢۤ;->۟ۦ۟ۢۢ(Ljava/lang/Object;)I

    #@149
    move-result v0

    #@14a
    move v8, v0

    #@14b
    move v3, v6

    #@14c
    goto/16 :goto_0

    #@14e
    :cond_d
    const-string v0, "\u06e7\u06e4\u06e8"

    #@150
    invoke-static {v0}, Lrn_34/rn_35/rn_36/۟ۥ۟ۡۡ;->ۣۣ۟ۧۧ(Ljava/lang/Object;)I

    #@153
    move-result v0

    #@154
    move v8, v0

    #@155
    move v3, v6

    #@156
    goto/16 :goto_0

    #@158
    :sswitch_12
    if-lez v7, :cond_6

    #@15a
    invoke-static {}, Lrn_1/ۣ۟ۧۤۦ;->ۣ۟ۢۨۢ()I

    #@15d
    move-result v0

    #@15e
    if-gtz v0, :cond_e

    #@160
    const-string v0, "\u06e3\u06df\u06e0"

    #@162
    invoke-static {v0}, Lrn_65/rn_66/rn_67/۠ۨۨۦ;->ۨۢ۠ۢ(Ljava/lang/Object;)I

    #@165
    move-result v0

    #@166
    move v8, v0

    #@167
    goto/16 :goto_0

    #@169
    :cond_e
    const-string v0, "\u06e5\u06df\u06e2"

    #@16b
    goto/16 :goto_7

    #@16d
    :cond_f
    :sswitch_13
    invoke-static {}, Lrn_65/rn_66/rn_67/۠ۨۨۦ;->ۨۨۦۥ()I

    #@170
    move-result v0

    #@171
    if-gtz v0, :cond_10

    #@173
    const-string v0, "\u06e1\u06e6\u06e5"

    #@175
    goto/16 :goto_8

    #@177
    :cond_10
    const-string v0, "\u06e6\u06e8\u06e7"

    #@179
    goto/16 :goto_8

    #@17b
    :sswitch_14
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    #@17e
    move-result v0

    #@17f
    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    #@182
    move-result v8

    #@183
    if-le v0, v8, :cond_f

    #@185
    invoke-static {}, Lrn_65/rn_66/rn_67/ۣۢۢۤ;->ۡۡۧ۠()I

    #@188
    move-result v0

    #@189
    if-gtz v0, :cond_11

    #@18b
    const-string v0, "\u06e5\u06df\u06e2"

    #@18d
    invoke-static {v0}, Lrn_65/rn_66/rn_67/ۣۢۢۤ;->۟ۦ۟ۢۢ(Ljava/lang/Object;)I

    #@190
    move-result v0

    #@191
    move v8, v0

    #@192
    goto/16 :goto_0

    #@194
    :cond_11
    const-string v0, "\u06e1\u06e7\u06e2"

    #@196
    goto/16 :goto_4

    #@198
    :sswitch_15
    const/4 v6, 0x6

    #@199
    invoke-static {}, Lrn_65/rn_66/rn_67/ۣۢۢۤ;->ۡۡۧ۠()I

    #@19c
    move-result v0

    #@19d
    if-gtz v0, :cond_12

    #@19f
    const-string v0, "\u06e2\u06e1\u06df"

    #@1a1
    goto/16 :goto_5

    #@1a3
    :cond_12
    const-string v0, "\u06e8\u06df\u06e2"

    #@1a5
    goto/16 :goto_9

    #@1a7
    :sswitch_16
    invoke-static {}, Lrn_34/rn_35/rn_36/۟ۥ۟ۡۡ;->۟ۥۥۨۡ()I

    #@1aa
    move-result v0

    #@1ab
    if-ltz v0, :cond_13

    #@1ad
    const-string v0, "\u06e2\u06df\u06df"

    #@1af
    invoke-static {v0}, Lrn_1/ۣ۟ۧۤۦ;->ۨۥ۟ۦ(Ljava/lang/Object;)I

    #@1b2
    move-result v0

    #@1b3
    move v8, v0

    #@1b4
    goto/16 :goto_0

    #@1b6
    :cond_13
    const-string v0, "\u06e3\u06df\u06e0"

    #@1b8
    goto/16 :goto_8

    #@1ba
    :sswitch_data_0
    .sparse-switch
        0xdbe5 -> :sswitch_0
        0x1aa707 -> :sswitch_6
        0x1aaac1 -> :sswitch_e
        0x1aaaff -> :sswitch_a
        0x1aaf1c -> :sswitch_3
        0x1aaf7c -> :sswitch_1
        0x1ab242 -> :sswitch_d
        0x1ab280 -> :sswitch_13
        0x1ab31c -> :sswitch_10
        0x1ab31d -> :sswitch_b
        0x1ab604 -> :sswitch_3
        0x1ab606 -> :sswitch_16
        0x1ab646 -> :sswitch_9
        0x1ab9e5 -> :sswitch_8
        0x1aba22 -> :sswitch_c
        0x1abd88 -> :sswitch_15
        0x1abea5 -> :sswitch_f
        0x1ac167 -> :sswitch_4
        0x1ac1e8 -> :sswitch_3
        0x1ac265 -> :sswitch_12
        0x1ac509 -> :sswitch_7
        0x1ac527 -> :sswitch_14
        0x1ac5ab -> :sswitch_5
        0x1ac8cb -> :sswitch_11
        0x1ac909 -> :sswitch_2
        0x1ac94a -> :sswitch_3
    .end sparse-switch
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 9

    #@0
    const/4 v6, 0x1

    #@1
    const/4 v8, 0x0

    #@2
    const/4 v5, 0x0

    #@3
    const-string v0, "\u06e1\u06e7\u06e4"

    #@5
    invoke-static {v0}, Lrn_1/ۣ۟ۧۤۦ;->ۨۥ۟ۦ(Ljava/lang/Object;)I

    #@8
    move-result v0

    #@9
    move v4, v5

    #@a
    move v3, v5

    #@b
    move v2, v5

    #@c
    move v1, v5

    #@d
    :goto_0
    sparse-switch v0, :sswitch_data_0

    #@10
    goto :goto_0

    #@11
    :sswitch_0
    const/4 v2, 0x2

    #@12
    invoke-static {}, Ltdr/util/ۥۢ۠۟;->۟ۧۥۣ۟()I

    #@15
    move-result v0

    #@16
    if-ltz v0, :cond_e

    #@18
    invoke-static {}, Ltdr/util/ۥۢ۠۟;->۟ۧۥۣ۟()I

    #@1b
    const-string v0, "\u06e6\u06e0\u06e4"

    #@1d
    invoke-static {v0}, Lrn_65/rn_66/rn_67/ۣۢۢۤ;->۟ۦ۟ۢۢ(Ljava/lang/Object;)I

    #@20
    move-result v0

    #@21
    goto :goto_0

    #@22
    :cond_0
    :sswitch_1
    invoke-static {}, Lrn_34/rn_35/rn_36/۟ۥ۟ۡۡ;->۟ۥۥۨۡ()I

    #@25
    move-result v0

    #@26
    if-ltz v0, :cond_1

    #@28
    const-string v0, "\u06e0\u06e7\u06e2"

    #@2a
    invoke-static {v0}, Ltdr/util/ۥۢ۠۟;->۟ۢۡۨۡ(Ljava/lang/Object;)I

    #@2d
    move-result v0

    #@2e
    goto :goto_0

    #@2f
    :cond_1
    const-string v0, "\u06e3\u06e3\u06df"

    #@31
    :goto_1
    invoke-static {v0}, Ltdr/util/ۥۢ۠۟;->۟ۢۡۨۡ(Ljava/lang/Object;)I

    #@34
    move-result v0

    #@35
    goto :goto_0

    #@36
    :sswitch_2
    iget-object v0, p0, Lrn_34/rn_35/rn_36/rn_4206$2;->this$0:Lrn_34/rn_35/rn_36/rn_4206;

    #@38
    invoke-virtual {v0, v1}, Lrn_34/rn_35/rn_36/rn_4206;->rn_4299(I)V

    #@3b
    invoke-static {}, Lrn_34/rn_35/rn_36/۟ۥ۟ۡۡ;->۟ۥۥۨۡ()I

    #@3e
    move-result v0

    #@3f
    if-ltz v0, :cond_2

    #@41
    const-string v0, "\u06e8\u06e5\u06e4"

    #@43
    :goto_2
    invoke-static {v0}, Lrn_34/rn_35/rn_36/۟ۥ۟ۡۡ;->ۣۣ۟ۧۧ(Ljava/lang/Object;)I

    #@46
    move-result v0

    #@47
    goto :goto_0

    #@48
    :cond_2
    const-string v0, "\u06e0\u06e5\u06e8"

    #@4a
    goto :goto_2

    #@4b
    :sswitch_3
    invoke-static {}, Lrn_65/rn_66/rn_67/ۣۢۢۤ;->ۡۡۧ۠()I

    #@4e
    move-result v0

    #@4f
    if-gtz v0, :cond_3

    #@51
    const-string v0, "\u06e0\u06e1\u06e3"

    #@53
    goto :goto_1

    #@54
    :cond_3
    const-string v0, "\u06e1\u06e7\u06e4"

    #@56
    goto :goto_1

    #@57
    :sswitch_4
    invoke-static {}, Lrn_65/rn_66/rn_67/۠ۨۨۦ;->ۨۨۦۥ()I

    #@5a
    move-result v0

    #@5b
    if-gtz v0, :cond_4

    #@5d
    const-string v0, "\u06e0\u06e7\u06e5"

    #@5f
    invoke-static {v0}, Ltdr/util/ۥۢ۠۟;->۟ۢۡۨۡ(Ljava/lang/Object;)I

    #@62
    move-result v0

    #@63
    move v1, v2

    #@64
    goto :goto_0

    #@65
    :cond_4
    const-string v0, "\u06e4\u06e6\u06df"

    #@67
    move v1, v2

    #@68
    goto :goto_2

    #@69
    :cond_5
    :sswitch_5
    const-string v0, "\u06e8\u06e5\u06e4"

    #@6b
    goto :goto_1

    #@6c
    :sswitch_6
    const-string v0, "\u06e2\u06e1\u06e1"

    #@6e
    move v1, v5

    #@6f
    :goto_3
    invoke-static {v0}, Lrn_65/rn_66/rn_67/۠ۨۨۦ;->ۨۢ۠ۢ(Ljava/lang/Object;)I

    #@72
    move-result v0

    #@73
    goto :goto_0

    #@74
    :sswitch_7
    const-string v0, "\u06e0\u06e7\u06e5"

    #@76
    invoke-static {v0}, Lrn_65/rn_66/rn_67/ۣۢۢۤ;->۟ۦ۟ۢۢ(Ljava/lang/Object;)I

    #@79
    move-result v0

    #@7a
    move v1, v3

    #@7b
    goto :goto_0

    #@7c
    :cond_6
    :sswitch_8
    invoke-static {}, Lrn_34/rn_35/rn_36/۟ۥ۟ۡۡ;->۟ۥۥۨۡ()I

    #@7f
    move-result v0

    #@80
    if-ltz v0, :cond_7

    #@82
    invoke-static {}, Lrn_1/ۣ۟ۧۤۦ;->ۣ۟ۢۨۢ()I

    #@85
    const-string v0, "\u06e7\u06e0\u06e1"

    #@87
    :goto_4
    invoke-static {v0}, Lrn_1/ۣ۟ۧۤۦ;->ۨۥ۟ۦ(Ljava/lang/Object;)I

    #@8a
    move-result v0

    #@8b
    goto :goto_0

    #@8c
    :cond_7
    const-string v0, "\u06e8\u06e6\u06e4"

    #@8e
    invoke-static {v0}, Ltdr/util/ۥۢ۠۟;->۟ۢۡۨۡ(Ljava/lang/Object;)I

    #@91
    move-result v0

    #@92
    goto/16 :goto_0

    #@94
    :sswitch_9
    invoke-static {}, Lrn_34/rn_35/rn_36/۟ۥ۟ۡۡ;->۟ۥۥۨۡ()I

    #@97
    move-result v0

    #@98
    if-ltz v0, :cond_8

    #@9a
    invoke-static {}, Lrn_1/ۣ۟ۧۤۦ;->ۣ۟ۢۨۢ()I

    #@9d
    const-string v0, "\u06e1\u06e1\u06e2"

    #@9f
    invoke-static {v0}, Lrn_34/rn_35/rn_36/۟ۥ۟ۡۡ;->ۣۣ۟ۧۧ(Ljava/lang/Object;)I

    #@a2
    move-result v0

    #@a3
    goto/16 :goto_0

    #@a5
    :cond_8
    const-string v0, "\u06e5\u06e2\u06e5"

    #@a7
    :goto_5
    invoke-static {v0}, Lrn_65/rn_66/rn_67/۠ۨۨۦ;->ۨۢ۠ۢ(Ljava/lang/Object;)I

    #@aa
    move-result v0

    #@ab
    goto/16 :goto_0

    #@ad
    :sswitch_a
    const-string v0, "\u06e6\u06e5\u06e6"

    #@af
    move v1, v4

    #@b0
    :goto_6
    invoke-static {v0}, Lrn_1/ۣ۟ۧۤۦ;->ۨۥ۟ۦ(Ljava/lang/Object;)I

    #@b3
    move-result v0

    #@b4
    goto/16 :goto_0

    #@b6
    :sswitch_b
    invoke-static {}, Ltdr/util/ۥۢ۠۟;->۟ۧۥۣ۟()I

    #@b9
    move-result v0

    #@ba
    if-ltz v0, :cond_9

    #@bc
    const-string v0, "\u06df\u06e5\u06e6"

    #@be
    goto :goto_6

    #@bf
    :cond_9
    const-string v0, "\u06e8\u06e3\u06e1"

    #@c1
    invoke-static {v0}, Lrn_65/rn_66/rn_67/ۣۢۢۤ;->۟ۦ۟ۢۢ(Ljava/lang/Object;)I

    #@c4
    move-result v0

    #@c5
    goto/16 :goto_0

    #@c7
    :sswitch_c
    invoke-static {}, Lrn_1/ۣ۟ۧۤۦ;->ۣ۟ۢۨۢ()I

    #@ca
    move-result v0

    #@cb
    if-gtz v0, :cond_a

    #@cd
    invoke-static {}, Lrn_65/rn_66/rn_67/ۣۢۢۤ;->ۡۡۧ۠()I

    #@d0
    const-string v0, "\u06e3\u06e7\u06e1"

    #@d2
    :goto_7
    invoke-static {v0}, Lrn_1/ۣ۟ۧۤۦ;->ۨۥ۟ۦ(Ljava/lang/Object;)I

    #@d5
    move-result v0

    #@d6
    goto/16 :goto_0

    #@d8
    :cond_a
    const-string v0, "\u06e0\u06e7\u06e5"

    #@da
    goto :goto_4

    #@db
    :sswitch_d
    cmpl-float v0, p3, v8

    #@dd
    if-lez v0, :cond_6

    #@df
    const-string v0, "\u06e3\u06e6\u06e0"

    #@e1
    goto :goto_3

    #@e2
    :sswitch_e
    sget-object v0, Lrn_34/rn_35/rn_36/۟ۥ۟ۡۡ;->۠۠۠:[S

    #@e4
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    #@e7
    move-result v0

    #@e8
    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    #@eb
    move-result v7

    #@ec
    cmpl-float v0, v0, v7

    #@ee
    if-lez v0, :cond_0

    #@f0
    const-string v0, "\u06df\u06e5\u06e6"

    #@f2
    goto/16 :goto_1

    #@f4
    :sswitch_f
    const-string v0, "\u06e2\u06df\u06e3"

    #@f6
    goto :goto_4

    #@f7
    :sswitch_10
    invoke-static {}, Lrn_1/ۣ۟ۧۤۦ;->ۣ۟ۢۨۢ()I

    #@fa
    move-result v0

    #@fb
    if-gtz v0, :cond_b

    #@fd
    invoke-static {}, Lrn_1/ۣ۟ۧۤۦ;->ۣ۟ۢۨۢ()I

    #@100
    const-string v0, "\u06e1\u06e7\u06e4"

    #@102
    invoke-static {v0}, Lrn_65/rn_66/rn_67/ۣۢۢۤ;->۟ۦ۟ۢۢ(Ljava/lang/Object;)I

    #@105
    move-result v0

    #@106
    move v4, v6

    #@107
    goto/16 :goto_0

    #@109
    :cond_b
    const-string v0, "\u06e8\u06e1\u06e2"

    #@10b
    invoke-static {v0}, Lrn_34/rn_35/rn_36/۟ۥ۟ۡۡ;->ۣۣ۟ۧۧ(Ljava/lang/Object;)I

    #@10e
    move-result v0

    #@10f
    move v4, v6

    #@110
    goto/16 :goto_0

    #@112
    :sswitch_11
    const/4 v3, 0x3

    #@113
    const-string v0, "\u06e1\u06e1\u06e2"

    #@115
    goto/16 :goto_4

    #@117
    :sswitch_12
    invoke-static {}, Lrn_65/rn_66/rn_67/ۣۢۢۤ;->ۡۡۧ۠()I

    #@11a
    move-result v0

    #@11b
    if-gtz v0, :cond_c

    #@11d
    const-string v0, "\u06e7\u06e1\u06e1"

    #@11f
    goto :goto_5

    #@120
    :cond_c
    const-string v0, "\u06e6\u06e2\u06e7"

    #@122
    invoke-static {v0}, Ltdr/util/ۥۢ۠۟;->۟ۢۡۨۡ(Ljava/lang/Object;)I

    #@125
    move-result v0

    #@126
    goto/16 :goto_0

    #@128
    :sswitch_13
    cmpl-float v0, p4, v8

    #@12a
    if-lez v0, :cond_5

    #@12c
    invoke-static {}, Lrn_65/rn_66/rn_67/۠ۨۨۦ;->ۨۨۦۥ()I

    #@12f
    move-result v0

    #@130
    if-gtz v0, :cond_d

    #@132
    invoke-static {}, Lrn_65/rn_66/rn_67/۠ۨۨۦ;->ۨۨۦۥ()I

    #@135
    const-string v0, "\u06e2\u06e1\u06e1"

    #@137
    goto/16 :goto_3

    #@139
    :cond_d
    const-string v0, "\u06e1\u06e2"

    #@13b
    goto :goto_7

    #@13c
    :cond_e
    const-string v0, "\u06e0\u06e0\u06e2"

    #@13e
    goto :goto_7

    #@13f
    :sswitch_14
    return v6

    #@140
    :sswitch_data_0
    .sparse-switch
        0xdc21 -> :sswitch_0
        0x1aa7a2 -> :sswitch_5
        0x1aa7c0 -> :sswitch_d
        0x1aaae2 -> :sswitch_4
        0x1aab83 -> :sswitch_14
        0x1aabbe -> :sswitch_2
        0x1aaec2 -> :sswitch_7
        0x1aaf7e -> :sswitch_e
        0x1ab246 -> :sswitch_c
        0x1ab282 -> :sswitch_12
        0x1ab67f -> :sswitch_13
        0x1ab6dc -> :sswitch_3
        0x1ab6dd -> :sswitch_b
        0x1aba2a -> :sswitch_8
        0x1aba9d -> :sswitch_9
        0x1abde8 -> :sswitch_c
        0x1ac16a -> :sswitch_c
        0x1ac1ab -> :sswitch_c
        0x1ac207 -> :sswitch_f
        0x1ac547 -> :sswitch_1
        0x1ac909 -> :sswitch_a
        0x1ac946 -> :sswitch_6
        0x1ac987 -> :sswitch_11
        0x1ac9a6 -> :sswitch_10
    .end sparse-switch
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 2

    #@0
    const-string v0, "\u06e0\u06e5\u06e7"

    #@2
    invoke-static {v0}, Lrn_34/rn_35/rn_36/۟ۥ۟ۡۡ;->ۣۣ۟ۧۧ(Ljava/lang/Object;)I

    #@5
    move-result v0

    #@6
    :goto_0
    sparse-switch v0, :sswitch_data_0

    #@9
    goto :goto_0

    #@a
    :sswitch_0
    sget-object v0, Lrn_1/ۣ۟ۧۤۦ;->۟۠ۡۨۧ:[S

    #@c
    iget-object v0, p0, Lrn_34/rn_35/rn_36/rn_4206$2;->this$0:Lrn_34/rn_35/rn_36/rn_4206;

    #@e
    const/16 v1, 0x8

    #@10
    invoke-virtual {v0, v1}, Lrn_34/rn_35/rn_36/rn_4206;->rn_4299(I)V

    #@13
    const-string v0, "\u06e8\u06df\u06e4"

    #@15
    invoke-static {v0}, Lrn_65/rn_66/rn_67/ۣۢۢۤ;->۟ۦ۟ۢۢ(Ljava/lang/Object;)I

    #@18
    move-result v0

    #@19
    goto :goto_0

    #@1a
    :sswitch_1
    const/4 v0, 0x1

    #@1b
    return v0

    #@1c
    :sswitch_2
    const-string v0, "\u06e0\u06e5\u06e7"

    #@1e
    invoke-static {v0}, Lrn_1/ۣ۟ۧۤۦ;->ۨۥ۟ۦ(Ljava/lang/Object;)I

    #@21
    move-result v0

    #@22
    goto :goto_0

    #@23
    nop

    #@24
    :sswitch_data_0
    .sparse-switch
        0x1aab82 -> :sswitch_0
        0x1ac8cd -> :sswitch_1
        0x1ac9c1 -> :sswitch_2
    .end sparse-switch
.end method
