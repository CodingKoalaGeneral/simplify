.class Lrn_1/CardView$CardViewEclairMr1$1;
.super Ljava/lang/Object;
.source "CardView.java"

# interfaces
.implements Lrn_1/RoundRectDrawableWithShadow$RoundRectHelper;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrn_1/CardView$CardViewEclairMr1;->initStatic()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lrn_1/CardView$CardViewEclairMr1;


# direct methods
.method constructor <init>(Lrn_1/CardView$CardViewEclairMr1;)V
    .locals 0

    #@0
    .line 523
    iput-object p1, p0, Lrn_1/CardView$CardViewEclairMr1$1;->this$0:Lrn_1/CardView$CardViewEclairMr1;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public drawRoundRect(Landroid/graphics/Canvas;Landroid/graphics/RectF;FLandroid/graphics/Paint;)V
    .locals 16

    #@0
    .line 527
    move-object/from16 v0, p0

    #@2
    move-object/from16 v7, p1

    #@4
    move-object/from16 v8, p2

    #@6
    const/high16 v1, 0x40000000    # 2.0f

    #@8
    mul-float v1, v1, p3

    #@a
    .line 528
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->width()F

    #@d
    move-result v2

    #@e
    sub-float/2addr v2, v1

    #@f
    const/high16 v9, 0x3f800000    # 1.0f

    #@11
    sub-float v10, v2, v9

    #@13
    .line 529
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->height()F

    #@16
    move-result v2

    #@17
    sub-float/2addr v2, v1

    #@18
    sub-float v11, v2, v9

    #@1a
    .line 531
    const/4 v12, 0x0

    #@1b
    cmpl-float v1, p3, v9

    #@1d
    if-ltz v1, :cond_0

    #@1f
    .line 532
    const/high16 v1, 0x3f000000    # 0.5f

    #@21
    add-float v13, p3, v1

    #@23
    .line 533
    iget-object v1, v0, Lrn_1/CardView$CardViewEclairMr1$1;->this$0:Lrn_1/CardView$CardViewEclairMr1;

    #@25
    iget-object v1, v1, Lrn_1/CardView$CardViewEclairMr1;->sCornerRect:Landroid/graphics/RectF;

    #@27
    neg-float v2, v13

    #@28
    invoke-virtual {v1, v2, v2, v13, v13}, Landroid/graphics/RectF;->set(FFFF)V

    #@2b
    .line 534
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    #@2e
    move-result v14

    #@2f
    .line 535
    iget v1, v8, Landroid/graphics/RectF;->left:F

    #@31
    add-float/2addr v1, v13

    #@32
    iget v2, v8, Landroid/graphics/RectF;->top:F

    #@34
    add-float/2addr v2, v13

    #@35
    invoke-virtual {v7, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    #@38
    .line 536
    iget-object v1, v0, Lrn_1/CardView$CardViewEclairMr1$1;->this$0:Lrn_1/CardView$CardViewEclairMr1;

    #@3a
    iget-object v2, v1, Lrn_1/CardView$CardViewEclairMr1;->sCornerRect:Landroid/graphics/RectF;

    #@3c
    const/high16 v3, 0x43340000    # 180.0f

    #@3e
    const/high16 v4, 0x42b40000    # 90.0f

    #@40
    const/4 v5, 0x1

    #@41
    move-object/from16 v1, p1

    #@43
    move-object/from16 v6, p4

    #@45
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    #@48
    .line 537
    invoke-virtual {v7, v10, v12}, Landroid/graphics/Canvas;->translate(FF)V

    #@4b
    .line 538
    const/high16 v15, 0x42b40000    # 90.0f

    #@4d
    invoke-virtual {v7, v15}, Landroid/graphics/Canvas;->rotate(F)V

    #@50
    .line 539
    iget-object v1, v0, Lrn_1/CardView$CardViewEclairMr1$1;->this$0:Lrn_1/CardView$CardViewEclairMr1;

    #@52
    iget-object v2, v1, Lrn_1/CardView$CardViewEclairMr1;->sCornerRect:Landroid/graphics/RectF;

    #@54
    move-object/from16 v1, p1

    #@56
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    #@59
    .line 540
    invoke-virtual {v7, v11, v12}, Landroid/graphics/Canvas;->translate(FF)V

    #@5c
    .line 541
    invoke-virtual {v7, v15}, Landroid/graphics/Canvas;->rotate(F)V

    #@5f
    .line 542
    iget-object v1, v0, Lrn_1/CardView$CardViewEclairMr1$1;->this$0:Lrn_1/CardView$CardViewEclairMr1;

    #@61
    iget-object v2, v1, Lrn_1/CardView$CardViewEclairMr1;->sCornerRect:Landroid/graphics/RectF;

    #@63
    move-object/from16 v1, p1

    #@65
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    #@68
    .line 543
    invoke-virtual {v7, v10, v12}, Landroid/graphics/Canvas;->translate(FF)V

    #@6b
    .line 544
    invoke-virtual {v7, v15}, Landroid/graphics/Canvas;->rotate(F)V

    #@6e
    .line 545
    iget-object v1, v0, Lrn_1/CardView$CardViewEclairMr1$1;->this$0:Lrn_1/CardView$CardViewEclairMr1;

    #@70
    iget-object v2, v1, Lrn_1/CardView$CardViewEclairMr1;->sCornerRect:Landroid/graphics/RectF;

    #@72
    move-object/from16 v1, p1

    #@74
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    #@77
    .line 546
    invoke-virtual {v7, v14}, Landroid/graphics/Canvas;->restoreToCount(I)V

    #@7a
    .line 548
    iget v1, v8, Landroid/graphics/RectF;->left:F

    #@7c
    add-float/2addr v1, v13

    #@7d
    sub-float v2, v1, v9

    #@7f
    iget v3, v8, Landroid/graphics/RectF;->top:F

    #@81
    iget v1, v8, Landroid/graphics/RectF;->right:F

    #@83
    sub-float/2addr v1, v13

    #@84
    add-float v4, v1, v9

    #@86
    iget v1, v8, Landroid/graphics/RectF;->top:F

    #@88
    add-float v5, v1, v13

    #@8a
    move-object/from16 v1, p1

    #@8c
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    #@8f
    .line 551
    iget v1, v8, Landroid/graphics/RectF;->left:F

    #@91
    add-float/2addr v1, v13

    #@92
    sub-float v2, v1, v9

    #@94
    iget v1, v8, Landroid/graphics/RectF;->bottom:F

    #@96
    sub-float/2addr v1, v13

    #@97
    add-float v3, v1, v9

    #@99
    iget v1, v8, Landroid/graphics/RectF;->right:F

    #@9b
    sub-float/2addr v1, v13

    #@9c
    add-float v4, v1, v9

    #@9e
    iget v5, v8, Landroid/graphics/RectF;->bottom:F

    #@a0
    move-object/from16 v1, p1

    #@a2
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    #@a5
    goto :goto_0

    #@a6
    .line 531
    :cond_0
    move/from16 v13, p3

    #@a8
    .line 556
    :goto_0
    iget v2, v8, Landroid/graphics/RectF;->left:F

    #@aa
    iget v1, v8, Landroid/graphics/RectF;->top:F

    #@ac
    sub-float v3, v13, v9

    #@ae
    invoke-static {v12, v3}, Ljava/lang/Math;->max(FF)F

    #@b1
    move-result v3

    #@b2
    add-float/2addr v3, v1

    #@b3
    iget v4, v8, Landroid/graphics/RectF;->right:F

    #@b5
    iget v1, v8, Landroid/graphics/RectF;->bottom:F

    #@b7
    sub-float/2addr v1, v13

    #@b8
    add-float v5, v1, v9

    #@ba
    move-object/from16 v1, p1

    #@bc
    move-object/from16 v6, p4

    #@be
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    #@c1
    .line 558
    return-void
.end method
