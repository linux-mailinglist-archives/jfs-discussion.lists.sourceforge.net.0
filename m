Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A0C1D7DD15B
	for <lists+jfs-discussion@lfdr.de>; Tue, 31 Oct 2023 17:16:28 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1qxrPW-0006Tr-2h;
	Tue, 31 Oct 2023 16:16:10 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <ghandatmanas@gmail.com>) id 1qwmjr-0003R0-Sv
 for jfs-discussion@lists.sourceforge.net;
 Sat, 28 Oct 2023 17:04:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=UHV10VAev3CuKqDN0D1zrqlQKSf77ZJdHmXgrDinvVc=; b=a7fGr6E5lQX5SD842aQ+uSZhIe
 qkPXSLXYpUCF+0FgzfPWsR/pryGdUQmGCkE4BsEFdDnsfp5OZ5SbqD1Ip8jXm4mqmJe2AGys6XX03
 c/xJHeKSOQlcgWgzy7rOJhD7tTh6B5xPn3IsjUpctTK8tWKHsiO6p/UUcrkqED+y0iVA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=UHV10VAev3CuKqDN0D1zrqlQKSf77ZJdHmXgrDinvVc=; b=CYrbfFTbU3wz3r2opmrAW+qyMJ
 /2Gv85no2IuNjeRe2CxdcwSXsYO0D67KQejKIx9kLFUwkDsdX26ognpW0L0vP164ijwI8uhsvCjKe
 7bA98s0DRS0aMUQpE3b0p4+vnw7TOuVHO3YG1fWZRDDf7HF27xSRbhfeqo9iFOpmNzKY=;
Received: from mail-ot1-f51.google.com ([209.85.210.51])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1qwmjo-0003RA-4h for jfs-discussion@lists.sourceforge.net;
 Sat, 28 Oct 2023 17:04:43 +0000
Received: by mail-ot1-f51.google.com with SMTP id
 46e09a7af769-6ce2bcb131fso2102568a34.1
 for <jfs-discussion@lists.sourceforge.net>;
 Sat, 28 Oct 2023 10:04:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1698512674; x=1699117474; darn=lists.sourceforge.net;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=UHV10VAev3CuKqDN0D1zrqlQKSf77ZJdHmXgrDinvVc=;
 b=mNxBwa/KhTCtO/AigotWUz+ypxZc+ZofZm38DcvznOKyIlPg47lDdOwjbcghXcsrQi
 KM9QnXyJ86VnP7+y4Ag6R6Z2bXCjZoZr8X6kr6p7i1YFlO6ndMc255SFOaTOuxLO4rPd
 lKlNMA6UbSguBWQ5yClNHGrxHTdNzyjN9mwrSIPCz8GxUoUQUh8N1lB++r1rQL0lpdBv
 lHoxZoIa4RfctyF1cgC2kTzwY03b/uK+8doYUrfXoAHngu1Qr+5KUZPtirdF/qSGoADk
 A2na9RjzgGvTN2VVsfvhv7wr24v4T5m/0akKnKiLDLNkK+y7BSTtktV/8xKz76nKXV7d
 Yn1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1698512674; x=1699117474;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=UHV10VAev3CuKqDN0D1zrqlQKSf77ZJdHmXgrDinvVc=;
 b=Rc/jO9H71vm5zF/ZKP7Dtu21vbDrcpS7p1YWqGlaHH6n16xgCtu/I/MPIl4FlNwh47
 HUbxgiI9EAWCGMV9xui6esXIPfUHrVFv9HBCUKxnTb4GrlCojJjNAr89wbrISr6DQKCW
 aGzpCex0z/hStZPKrXUOoD7A4Rzkjp6OupLLz6R9qgbq0mOdYgeKxDOulAyRPvEXCuew
 ReP2+AUAHn8YyupcyMtGw+usDw1yShG2kw+8L5l25RAaE65K5pjH2hyBiAnGNDJkYC/q
 wKRqmI7CHDRQyr+REs6KpiDEjQ3z1WTeGpxR5OZn1zMwiAkQVj0AXzQ1rV2nkbnpQb2y
 m5Yw==
X-Gm-Message-State: AOJu0YydffhFPT8fAIyf7gYKep1z4pEIFLzoCzHEqY9+px6ByS739SGy
 BEmrmBhClXAEIrWQ7kTLGT5fcn9i71jdl65SRJY=
X-Google-Smtp-Source: AGHT+IHrALxcis2pJCPFTp/LL2mLk+qSn+5KryQPDCsG68bGEyJOVt8wUcmRBnkLUkVVTnNmJsdUjim0RP+B7dXriCw=
X-Received: by 2002:a05:6830:c4:b0:6cd:9e2:7fff with SMTP id
 x4-20020a05683000c400b006cd09e27fffmr5082641oto.36.1698512674180; Sat, 28 Oct
 2023 10:04:34 -0700 (PDT)
MIME-Version: 1.0
References: <20231017120356.55322-1-ghandatmanas@gmail.com>
 <339774d7-b50b-b4bc-7c49-b128b781428b@gmail.com>
In-Reply-To: <339774d7-b50b-b4bc-7c49-b128b781428b@gmail.com>
Date: Sat, 28 Oct 2023 22:34:19 +0530
Message-ID: <CAEt2hJ5V3Sn68YXqFZTCj5oap9DEr2NXiOjNV1SRMF6fKYK_PQ@mail.gmail.com>
To: dave.kleikamp@oracle.com, shaggy@kernel.org
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software, running on the system "util-spamd-2.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Another friendly ping On Mon, Oct 23, 2023 at 6:58 PM Manas
    Ghandat wrote: > Just a friendly remainder > > On 17/10/23 17:33, Manas Ghandat
    wrote: > > Currently there is a bound check missing in the dbAdjTree while
    > > accessing the dmt_stree. To add the required check added [...] 
 
 Content analysis details:   (-0.2 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
  0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
                             provider
                             [ghandatmanas[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
                              no trust
                             [209.85.210.51 listed in list.dnswl.org]
  0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
                             [209.85.210.51 listed in wl.mailspike.net]
  0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
  0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1qwmjo-0003RA-4h
X-Mailman-Approved-At: Tue, 31 Oct 2023 16:16:08 +0000
Subject: Re: [Jfs-discussion] [PATCH] jfs: fix array-index-out-of-bounds in
 dbAdjTree
X-BeenThere: jfs-discussion@lists.sourceforge.net
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <jfs-discussion.lists.sourceforge.net>
List-Unsubscribe: <https://lists.sourceforge.net/lists/options/jfs-discussion>, 
 <mailto:jfs-discussion-request@lists.sourceforge.net?subject=unsubscribe>
List-Archive: <http://sourceforge.net/mailarchive/forum.php?forum_name=jfs-discussion>
List-Post: <mailto:jfs-discussion@lists.sourceforge.net>
List-Help: <mailto:jfs-discussion-request@lists.sourceforge.net?subject=help>
List-Subscribe: <https://lists.sourceforge.net/lists/listinfo/jfs-discussion>, 
 <mailto:jfs-discussion-request@lists.sourceforge.net?subject=subscribe>
From: Manas Ghandat via Jfs-discussion <jfs-discussion@lists.sourceforge.net>
Reply-To: Manas Ghandat <ghandatmanas@gmail.com>
Cc: syzbot+39ba34a099ac2e9bd3cb@syzkaller.appspotmail.com,
 jfs-discussion@lists.sourceforge.net,
 Linux-kernel-mentees@lists.linuxfoundation.org, linux-kernel@vger.kernel.org
Content-Type: multipart/mixed; boundary="===============1720380930814616144=="
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

--===============1720380930814616144==
Content-Type: multipart/alternative; boundary="00000000000097518a0608c9cc97"

--00000000000097518a0608c9cc97
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Another friendly ping

On Mon, Oct 23, 2023 at 6:58=E2=80=AFPM Manas Ghandat <ghandatmanas@gmail.c=
om>
wrote:

> Just a friendly remainder
>
> On 17/10/23 17:33, Manas Ghandat wrote:
> > Currently there is a bound check missing in the dbAdjTree while
> > accessing the dmt_stree. To add the required check added the bool is_ct=
l
> > which is required to determine the size as suggest in the following
> > commit.
> >
> https://lore.kernel.org/linux-kernel-mentees/f9475918-2186-49b8-b801-6f0f=
9e75f4fa@oracle.com/
> >
> > Reported-by: syzbot+39ba34a099ac2e9bd3cb@syzkaller.appspotmail.com
> > Fixes: https://syzkaller.appspot.com/bug?extid=3D39ba34a099ac2e9bd3cb
> > Signed-off-by: Manas Ghandat <ghandatmanas@gmail.com>
> > ---
> >   fs/jfs/jfs_dmap.c | 57 ++++++++++++++++++++++++++--------------------=
-
> >   1 file changed, 31 insertions(+), 26 deletions(-)
> >
> > diff --git a/fs/jfs/jfs_dmap.c b/fs/jfs/jfs_dmap.c
> > index 88afd108c2dd..57fba21994c3 100644
> > --- a/fs/jfs/jfs_dmap.c
> > +++ b/fs/jfs/jfs_dmap.c
> > @@ -63,10 +63,10 @@
> >    */
> >   static void dbAllocBits(struct bmap * bmp, struct dmap * dp, s64 blkn=
o,
> >                       int nblocks);
> > -static void dbSplit(dmtree_t * tp, int leafno, int splitsz, int newval=
);
> > -static int dbBackSplit(dmtree_t * tp, int leafno);
> > -static int dbJoin(dmtree_t * tp, int leafno, int newval);
> > -static void dbAdjTree(dmtree_t * tp, int leafno, int newval);
> > +static void dbSplit(dmtree_t * tp, int leafno, int splitsz, int newval=
,
> bool is_ctl);
> > +static int dbBackSplit(dmtree_t * tp, int leafno, bool is_ctl);
> > +static int dbJoin(dmtree_t * tp, int leafno, int newval, bool is_ctl);
> > +static void dbAdjTree(dmtree_t * tp, int leafno, int newval, bool
> is_ctl);
> >   static int dbAdjCtl(struct bmap * bmp, s64 blkno, int newval, int
> alloc,
> >                   int level);
> >   static int dbAllocAny(struct bmap * bmp, s64 nblocks, int l2nb, s64 *
> results);
> > @@ -2096,7 +2096,7 @@ static int dbFreeDmap(struct bmap * bmp, struct
> dmap * dp, s64 blkno,
> >                * system.
> >                */
> >               if (dp->tree.stree[word] =3D=3D NOFREE)
> > -                     dbBackSplit((dmtree_t *) & dp->tree, word);
> > +                     dbBackSplit((dmtree_t *) & dp->tree, word, false)=
;
> >
> >               dbAllocBits(bmp, dp, blkno, nblocks);
> >       }
> > @@ -2182,7 +2182,7 @@ static void dbAllocBits(struct bmap * bmp, struct
> dmap * dp, s64 blkno,
> >                        * the binary system of the leaves if need be.
> >                        */
> >                       dbSplit(tp, word, BUDMIN,
> > -                             dbMaxBud((u8 *) & dp->wmap[word]));
> > +                             dbMaxBud((u8 *) & dp->wmap[word]),false);
> >
> >                       word +=3D 1;
> >               } else {
> > @@ -2222,7 +2222,7 @@ static void dbAllocBits(struct bmap * bmp, struct
> dmap * dp, s64 blkno,
> >                                * system of the leaves to reflect the
> current
> >                                * allocation (size).
> >                                */
> > -                             dbSplit(tp, word, size, NOFREE);
> > +                             dbSplit(tp, word, size, NOFREE, false);
> >
> >                               /* get the number of dmap words handled *=
/
> >                               nw =3D BUDSIZE(size, BUDMIN);
> > @@ -2329,7 +2329,7 @@ static int dbFreeBits(struct bmap * bmp, struct
> dmap * dp, s64 blkno,
> >                       /* update the leaf for this dmap word.
> >                        */
> >                       rc =3D dbJoin(tp, word,
> > -                                 dbMaxBud((u8 *) & dp->wmap[word]));
> > +                                 dbMaxBud((u8 *) &
> dp->wmap[word]),false);
> >                       if (rc)
> >                               return rc;
> >
> > @@ -2362,7 +2362,7 @@ static int dbFreeBits(struct bmap * bmp, struct
> dmap * dp, s64 blkno,
> >
> >                               /* update the leaf.
> >                                */
> > -                             rc =3D dbJoin(tp, word, size);
> > +                             rc =3D dbJoin(tp, word, size, false);
> >                               if (rc)
> >                                       return rc;
> >
> > @@ -2514,16 +2514,16 @@ dbAdjCtl(struct bmap * bmp, s64 blkno, int
> newval, int alloc, int level)
> >                * that it is at the front of a binary buddy system.
> >                */
> >               if (oldval =3D=3D NOFREE) {
> > -                     rc =3D dbBackSplit((dmtree_t *) dcp, leafno);
> > +                     rc =3D dbBackSplit((dmtree_t *) dcp, leafno, true=
);
> >                       if (rc) {
> >                               release_metapage(mp);
> >                               return rc;
> >                       }
> >                       oldval =3D dcp->stree[ti];
> >               }
> > -             dbSplit((dmtree_t *) dcp, leafno, dcp->budmin, newval);
> > +             dbSplit((dmtree_t *) dcp, leafno, dcp->budmin, newval,
> true);
> >       } else {
> > -             rc =3D dbJoin((dmtree_t *) dcp, leafno, newval);
> > +             rc =3D dbJoin((dmtree_t *) dcp, leafno, newval, true);
> >               if (rc) {
> >                       release_metapage(mp);
> >                       return rc;
> > @@ -2554,7 +2554,7 @@ dbAdjCtl(struct bmap * bmp, s64 blkno, int newval=
,
> int alloc, int level)
> >                                */
> >                               if (alloc) {
> >                                       dbJoin((dmtree_t *) dcp, leafno,
> > -                                            oldval);
> > +                                            oldval, true);
> >                               } else {
> >                                       /* the dbJoin() above might have
> >                                        * caused a larger binary buddy
> system
> > @@ -2564,9 +2564,9 @@ dbAdjCtl(struct bmap * bmp, s64 blkno, int newval=
,
> int alloc, int level)
> >                                        */
> >                                       if (dcp->stree[ti] =3D=3D NOFREE)
> >                                               dbBackSplit((dmtree_t *)
> > -                                                         dcp, leafno);
> > +                                                         dcp, leafno,
> true);
> >                                       dbSplit((dmtree_t *) dcp, leafno,
> > -                                             dcp->budmin, oldval);
> > +                                             dcp->budmin, oldval, true=
);
> >                               }
> >
> >                               /* release the buffer and return the erro=
r.
> > @@ -2614,7 +2614,7 @@ dbAdjCtl(struct bmap * bmp, s64 blkno, int newval=
,
> int alloc, int level)
> >    *
> >    * serialization: IREAD_LOCK(ipbmap) or IWRITE_LOCK(ipbmap) held on
> entry/exit;
> >    */
> > -static void dbSplit(dmtree_t * tp, int leafno, int splitsz, int newval=
)
> > +static void dbSplit(dmtree_t * tp, int leafno, int splitsz, int newval=
,
> bool is_ctl)
> >   {
> >       int budsz;
> >       int cursz;
> > @@ -2636,7 +2636,7 @@ static void dbSplit(dmtree_t * tp, int leafno, in=
t
> splitsz, int newval)
> >               while (cursz >=3D splitsz) {
> >                       /* update the buddy's leaf with its new value.
> >                        */
> > -                     dbAdjTree(tp, leafno ^ budsz, cursz);
> > +                     dbAdjTree(tp, leafno ^ budsz, cursz, is_ctl);
> >
> >                       /* on to the next size and buddy.
> >                        */
> > @@ -2648,7 +2648,7 @@ static void dbSplit(dmtree_t * tp, int leafno, in=
t
> splitsz, int newval)
> >       /* adjust the dmap tree to reflect the specified leaf's new
> >        * value.
> >        */
> > -     dbAdjTree(tp, leafno, newval);
> > +     dbAdjTree(tp, leafno, newval, is_ctl);
> >   }
> >
> >
> > @@ -2679,7 +2679,7 @@ static void dbSplit(dmtree_t * tp, int leafno, in=
t
> splitsz, int newval)
> >    *
> >    * serialization: IREAD_LOCK(ipbmap) or IWRITE_LOCK(ipbmap) held on
> entry/exit;
> >    */
> > -static int dbBackSplit(dmtree_t * tp, int leafno)
> > +static int dbBackSplit(dmtree_t * tp, int leafno, bool is_ctl)
> >   {
> >       int budsz, bud, w, bsz, size;
> >       int cursz;
> > @@ -2730,7 +2730,7 @@ static int dbBackSplit(dmtree_t * tp, int leafno)
> >                                * system in two.
> >                                */
> >                               cursz =3D leaf[bud] - 1;
> > -                             dbSplit(tp, bud, cursz, cursz);
> > +                             dbSplit(tp, bud, cursz, cursz, is_ctl);
> >                               break;
> >                       }
> >               }
> > @@ -2758,7 +2758,7 @@ static int dbBackSplit(dmtree_t * tp, int leafno)
> >    *
> >    * RETURN VALUES: none
> >    */
> > -static int dbJoin(dmtree_t * tp, int leafno, int newval)
> > +static int dbJoin(dmtree_t * tp, int leafno, int newval, bool is_ctl)
> >   {
> >       int budsz, buddy;
> >       s8 *leaf;
> > @@ -2813,12 +2813,12 @@ static int dbJoin(dmtree_t * tp, int leafno, in=
t
> newval)
> >                       if (leafno < buddy) {
> >                               /* leafno is the left buddy.
> >                                */
> > -                             dbAdjTree(tp, buddy, NOFREE);
> > +                             dbAdjTree(tp, buddy, NOFREE, is_ctl);
> >                       } else {
> >                               /* buddy is the left buddy and becomes
> >                                * leafno.
> >                                */
> > -                             dbAdjTree(tp, leafno, NOFREE);
> > +                             dbAdjTree(tp, leafno, NOFREE, is_ctl);
> >                               leafno =3D buddy;
> >                       }
> >
> > @@ -2831,7 +2831,7 @@ static int dbJoin(dmtree_t * tp, int leafno, int
> newval)
> >
> >       /* update the leaf value.
> >        */
> > -     dbAdjTree(tp, leafno, newval);
> > +     dbAdjTree(tp, leafno, newval, is_ctl);
> >
> >       return 0;
> >   }
> > @@ -2852,15 +2852,20 @@ static int dbJoin(dmtree_t * tp, int leafno, in=
t
> newval)
> >    *
> >    * RETURN VALUES: none
> >    */
> > -static void dbAdjTree(dmtree_t * tp, int leafno, int newval)
> > +static void dbAdjTree(dmtree_t * tp, int leafno, int newval, bool
> is_ctl)
> >   {
> >       int lp, pp, k;
> > -     int max;
> > +     int max, size;
> > +
> > +     size =3D is_ctl ? CTLTREESIZE : TREESIZE;
> >
> >       /* pick up the index of the leaf for this leafno.
> >        */
> >       lp =3D leafno + le32_to_cpu(tp->dmt_leafidx);
> >
> > +     if (lp > size || lp < 0)
> > +             return;
> > +
> >       /* is the current value the same as the old value ?  if so,
> >        * there is nothing to do.
> >        */
>

--00000000000097518a0608c9cc97
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: base64

PGRpdiBkaXI9Imx0ciI+QW5vdGhlciBmcmllbmRseSBwaW5nPC9kaXY+PGJyPjxkaXYgY2xhc3M9
ImdtYWlsX3F1b3RlIj48ZGl2IGRpcj0ibHRyIiBjbGFzcz0iZ21haWxfYXR0ciI+T24gTW9uLCBP
Y3QgMjMsIDIwMjMgYXQgNjo1OOKAr1BNIE1hbmFzIEdoYW5kYXQgJmx0OzxhIGhyZWY9Im1haWx0
bzpnaGFuZGF0bWFuYXNAZ21haWwuY29tIj5naGFuZGF0bWFuYXNAZ21haWwuY29tPC9hPiZndDsg
d3JvdGU6PGJyPjwvZGl2PjxibG9ja3F1b3RlIGNsYXNzPSJnbWFpbF9xdW90ZSIgc3R5bGU9Im1h
cmdpbjowcHggMHB4IDBweCAwLjhleDtib3JkZXItbGVmdDoxcHggc29saWQgcmdiKDIwNCwyMDQs
MjA0KTtwYWRkaW5nLWxlZnQ6MWV4Ij5KdXN0IGEgZnJpZW5kbHkgcmVtYWluZGVyPGJyPg0KPGJy
Pg0KT24gMTcvMTAvMjMgMTc6MzMsIE1hbmFzIEdoYW5kYXQgd3JvdGU6PGJyPg0KJmd0OyBDdXJy
ZW50bHkgdGhlcmUgaXMgYSBib3VuZCBjaGVjayBtaXNzaW5nIGluIHRoZSBkYkFkalRyZWUgd2hp
bGU8YnI+DQomZ3Q7IGFjY2Vzc2luZyB0aGUgZG10X3N0cmVlLiBUbyBhZGQgdGhlIHJlcXVpcmVk
IGNoZWNrIGFkZGVkIHRoZSBib29sIGlzX2N0bDxicj4NCiZndDsgd2hpY2ggaXMgcmVxdWlyZWQg
dG8gZGV0ZXJtaW5lIHRoZSBzaXplIGFzIHN1Z2dlc3QgaW4gdGhlIGZvbGxvd2luZzxicj4NCiZn
dDsgY29tbWl0Ljxicj4NCiZndDsgPGEgaHJlZj0iaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvbGlu
dXgta2VybmVsLW1lbnRlZXMvZjk0NzU5MTgtMjE4Ni00OWI4LWI4MDEtNmYwZjllNzVmNGZhQG9y
YWNsZS5jb20vIiByZWw9Im5vcmVmZXJyZXIiIHRhcmdldD0iX2JsYW5rIj5odHRwczovL2xvcmUu
a2VybmVsLm9yZy9saW51eC1rZXJuZWwtbWVudGVlcy9mOTQ3NTkxOC0yMTg2LTQ5YjgtYjgwMS02
ZjBmOWU3NWY0ZmFAb3JhY2xlLmNvbS88L2E+PGJyPg0KJmd0Ozxicj4NCiZndDsgUmVwb3J0ZWQt
Ynk6IDxhIGhyZWY9Im1haWx0bzpzeXpib3QlMkIzOWJhMzRhMDk5YWMyZTliZDNjYkBzeXprYWxs
ZXIuYXBwc3BvdG1haWwuY29tIiB0YXJnZXQ9Il9ibGFuayI+c3l6Ym90KzM5YmEzNGEwOTlhYzJl
OWJkM2NiQHN5emthbGxlci5hcHBzcG90bWFpbC5jb208L2E+PGJyPg0KJmd0OyBGaXhlczogPGEg
aHJlZj0iaHR0cHM6Ly9zeXprYWxsZXIuYXBwc3BvdC5jb20vYnVnP2V4dGlkPTM5YmEzNGEwOTlh
YzJlOWJkM2NiIiByZWw9Im5vcmVmZXJyZXIiIHRhcmdldD0iX2JsYW5rIj5odHRwczovL3N5emth
bGxlci5hcHBzcG90LmNvbS9idWc/ZXh0aWQ9MzliYTM0YTA5OWFjMmU5YmQzY2I8L2E+PGJyPg0K
Jmd0OyBTaWduZWQtb2ZmLWJ5OiBNYW5hcyBHaGFuZGF0ICZsdDs8YSBocmVmPSJtYWlsdG86Z2hh
bmRhdG1hbmFzQGdtYWlsLmNvbSIgdGFyZ2V0PSJfYmxhbmsiPmdoYW5kYXRtYW5hc0BnbWFpbC5j
b208L2E+Jmd0Ozxicj4NCiZndDsgLS0tPGJyPg0KJmd0O8KgIMKgZnMvamZzL2pmc19kbWFwLmMg
fCA1NyArKysrKysrKysrKysrKysrKysrKysrKysrKy0tLS0tLS0tLS0tLS0tLS0tLS0tLTxicj4N
CiZndDvCoCDCoDEgZmlsZSBjaGFuZ2VkLCAzMSBpbnNlcnRpb25zKCspLCAyNiBkZWxldGlvbnMo
LSk8YnI+DQomZ3Q7PGJyPg0KJmd0OyBkaWZmIC0tZ2l0IGEvZnMvamZzL2pmc19kbWFwLmMgYi9m
cy9qZnMvamZzX2RtYXAuYzxicj4NCiZndDsgaW5kZXggODhhZmQxMDhjMmRkLi41N2ZiYTIxOTk0
YzMgMTAwNjQ0PGJyPg0KJmd0OyAtLS0gYS9mcy9qZnMvamZzX2RtYXAuYzxicj4NCiZndDsgKysr
IGIvZnMvamZzL2pmc19kbWFwLmM8YnI+DQomZ3Q7IEBAIC02MywxMCArNjMsMTAgQEA8YnI+DQom
Z3Q7wqAgwqAgKi88YnI+DQomZ3Q7wqAgwqBzdGF0aWMgdm9pZCBkYkFsbG9jQml0cyhzdHJ1Y3Qg
Ym1hcCAqIGJtcCwgc3RydWN0IGRtYXAgKiBkcCwgczY0IGJsa25vLDxicj4NCiZndDvCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoGludCBuYmxvY2tzKTs8YnI+DQomZ3Q7IC1zdGF0
aWMgdm9pZCBkYlNwbGl0KGRtdHJlZV90ICogdHAsIGludCBsZWFmbm8sIGludCBzcGxpdHN6LCBp
bnQgbmV3dmFsKTs8YnI+DQomZ3Q7IC1zdGF0aWMgaW50IGRiQmFja1NwbGl0KGRtdHJlZV90ICog
dHAsIGludCBsZWFmbm8pOzxicj4NCiZndDsgLXN0YXRpYyBpbnQgZGJKb2luKGRtdHJlZV90ICog
dHAsIGludCBsZWFmbm8sIGludCBuZXd2YWwpOzxicj4NCiZndDsgLXN0YXRpYyB2b2lkIGRiQWRq
VHJlZShkbXRyZWVfdCAqIHRwLCBpbnQgbGVhZm5vLCBpbnQgbmV3dmFsKTs8YnI+DQomZ3Q7ICtz
dGF0aWMgdm9pZCBkYlNwbGl0KGRtdHJlZV90ICogdHAsIGludCBsZWFmbm8sIGludCBzcGxpdHN6
LCBpbnQgbmV3dmFsLCBib29sIGlzX2N0bCk7PGJyPg0KJmd0OyArc3RhdGljIGludCBkYkJhY2tT
cGxpdChkbXRyZWVfdCAqIHRwLCBpbnQgbGVhZm5vLCBib29sIGlzX2N0bCk7PGJyPg0KJmd0OyAr
c3RhdGljIGludCBkYkpvaW4oZG10cmVlX3QgKiB0cCwgaW50IGxlYWZubywgaW50IG5ld3ZhbCwg
Ym9vbCBpc19jdGwpOzxicj4NCiZndDsgK3N0YXRpYyB2b2lkIGRiQWRqVHJlZShkbXRyZWVfdCAq
IHRwLCBpbnQgbGVhZm5vLCBpbnQgbmV3dmFsLCBib29sIGlzX2N0bCk7PGJyPg0KJmd0O8KgIMKg
c3RhdGljIGludCBkYkFkakN0bChzdHJ1Y3QgYm1hcCAqIGJtcCwgczY0IGJsa25vLCBpbnQgbmV3
dmFsLCBpbnQgYWxsb2MsPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgaW50
IGxldmVsKTs8YnI+DQomZ3Q7wqAgwqBzdGF0aWMgaW50IGRiQWxsb2NBbnkoc3RydWN0IGJtYXAg
KiBibXAsIHM2NCBuYmxvY2tzLCBpbnQgbDJuYiwgczY0ICogcmVzdWx0cyk7PGJyPg0KJmd0OyBA
QCAtMjA5Niw3ICsyMDk2LDcgQEAgc3RhdGljIGludCBkYkZyZWVEbWFwKHN0cnVjdCBibWFwICog
Ym1wLCBzdHJ1Y3QgZG1hcCAqIGRwLCBzNjQgYmxrbm8sPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgICogc3lzdGVtLjxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCAqLzxi
cj4NCiZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoGlmIChkcC0mZ3Q7dHJlZS5zdHJlZVt3b3Jk
XSA9PSBOT0ZSRUUpPGJyPg0KJmd0OyAtwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqBk
YkJhY2tTcGxpdCgoZG10cmVlX3QgKikgJmFtcDsgZHAtJmd0O3RyZWUsIHdvcmQpOzxicj4NCiZn
dDsgK8KgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgZGJCYWNrU3BsaXQoKGRtdHJlZV90
ICopICZhbXA7IGRwLSZndDt0cmVlLCB3b3JkLCBmYWxzZSk7PGJyPg0KJmd0O8KgIMKgPGJyPg0K
Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgIMKgZGJBbGxvY0JpdHMoYm1wLCBkcCwgYmxrbm8sIG5i
bG9ja3MpOzxicj4NCiZndDvCoCDCoCDCoCDCoH08YnI+DQomZ3Q7IEBAIC0yMTgyLDcgKzIxODIs
NyBAQCBzdGF0aWMgdm9pZCBkYkFsbG9jQml0cyhzdHJ1Y3QgYm1hcCAqIGJtcCwgc3RydWN0IGRt
YXAgKiBkcCwgczY0IGJsa25vLDxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCAqIHRoZSBiaW5hcnkgc3lzdGVtIG9mIHRoZSBsZWF2ZXMgaWYgbmVlZCBiZS48YnI+
DQomZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgKi88YnI+DQomZ3Q7wqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqBkYlNwbGl0KHRwLCB3b3JkLCBCVURNSU4s
PGJyPg0KJmd0OyAtwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqBk
Yk1heEJ1ZCgodTggKikgJmFtcDsgZHAtJmd0O3dtYXBbd29yZF0pKTs8YnI+DQomZ3Q7ICvCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoGRiTWF4QnVkKCh1OCAqKSAm
YW1wOyBkcC0mZ3Q7d21hcFt3b3JkXSksZmFsc2UpOzxicj4NCiZndDvCoCDCoDxicj4NCiZndDvC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoHdvcmQgKz0gMTs8YnI+DQomZ3Q7wqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqB9IGVsc2Ugezxicj4NCiZndDsgQEAgLTIyMjIsNyArMjIyMiw3
IEBAIHN0YXRpYyB2b2lkIGRiQWxsb2NCaXRzKHN0cnVjdCBibWFwICogYm1wLCBzdHJ1Y3QgZG1h
cCAqIGRwLCBzNjQgYmxrbm8sPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgICogc3lzdGVtIG9mIHRoZSBsZWF2ZXMgdG8gcmVmbGVjdCB0aGUg
Y3VycmVudDxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCAqIGFsbG9jYXRpb24gKHNpemUpLjxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCAqLzxicj4NCiZndDsgLcKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgZGJTcGxpdCh0cCwgd29yZCwgc2l6ZSwgTk9G
UkVFKTs8YnI+DQomZ3Q7ICvCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoGRiU3BsaXQodHAsIHdvcmQsIHNpemUsIE5PRlJFRSwgZmFsc2UpOzxicj4NCiZndDvCoCDC
oDxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oC8qIGdldCB0aGUgbnVtYmVyIG9mIGRtYXAgd29yZHMgaGFuZGxlZCAqLzxicj4NCiZndDvCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoG53ID0gQlVEU0laRShz
aXplLCBCVURNSU4pOzxicj4NCiZndDsgQEAgLTIzMjksNyArMjMyOSw3IEBAIHN0YXRpYyBpbnQg
ZGJGcmVlQml0cyhzdHJ1Y3QgYm1hcCAqIGJtcCwgc3RydWN0IGRtYXAgKiBkcCwgczY0IGJsa25v
LDxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoC8qIHVwZGF0ZSB0
aGUgbGVhZiBmb3IgdGhpcyBkbWFwIHdvcmQuPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgICovPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgcmMgPSBkYkpvaW4odHAsIHdvcmQsPGJyPg0KJmd0OyAtwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqBkYk1heEJ1ZCgodTggKikgJmFtcDsgZHAt
Jmd0O3dtYXBbd29yZF0pKTs8YnI+DQomZ3Q7ICvCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoGRiTWF4QnVkKCh1OCAqKSAmYW1wOyBkcC0mZ3Q7d21hcFt3
b3JkXSksZmFsc2UpOzxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oGlmIChyYyk8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqByZXR1cm4gcmM7PGJyPg0KJmd0O8KgIMKgPGJyPg0KJmd0OyBAQCAtMjM2Miw3ICsy
MzYyLDcgQEAgc3RhdGljIGludCBkYkZyZWVCaXRzKHN0cnVjdCBibWFwICogYm1wLCBzdHJ1Y3Qg
ZG1hcCAqIGRwLCBzNjQgYmxrbm8sPGJyPg0KJmd0O8KgIMKgPGJyPg0KJmd0O8KgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgLyogdXBkYXRlIHRoZSBsZWFmLjxi
cj4NCiZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCAq
Lzxicj4NCiZndDsgLcKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
cmMgPSBkYkpvaW4odHAsIHdvcmQsIHNpemUpOzxicj4NCiZndDsgK8KgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgcmMgPSBkYkpvaW4odHAsIHdvcmQsIHNpemUsIGZh
bHNlKTs8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqBpZiAocmMpPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgcmV0dXJuIHJjOzxicj4NCiZndDvCoCDCoDxicj4NCiZn
dDsgQEAgLTI1MTQsMTYgKzI1MTQsMTYgQEAgZGJBZGpDdGwoc3RydWN0IGJtYXAgKiBibXAsIHM2
NCBibGtubywgaW50IG5ld3ZhbCwgaW50IGFsbG9jLCBpbnQgbGV2ZWwpPGJyPg0KJmd0O8KgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgICogdGhhdCBpdCBpcyBhdCB0aGUgZnJvbnQgb2YgYSBiaW5hcnkg
YnVkZHkgc3lzdGVtLjxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCAqLzxicj4NCiZn
dDvCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoGlmIChvbGR2YWwgPT0gTk9GUkVFKSB7PGJyPg0KJmd0
OyAtwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqByYyA9IGRiQmFja1NwbGl0KChkbXRy
ZWVfdCAqKSBkY3AsIGxlYWZubyk7PGJyPg0KJmd0OyArwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqByYyA9IGRiQmFja1NwbGl0KChkbXRyZWVfdCAqKSBkY3AsIGxlYWZubywgdHJ1ZSk7
PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgaWYgKHJjKSB7PGJy
Pg0KJmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgcmVs
ZWFzZV9tZXRhcGFnZShtcCk7PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgcmV0dXJuIHJjOzxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoH08YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqBvbGR2YWwgPSBkY3AtJmd0O3N0cmVlW3RpXTs8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqB9PGJyPg0KJmd0OyAtwqAgwqAgwqAgwqAgwqAgwqAgwqBkYlNwbGl0KChkbXRyZWVf
dCAqKSBkY3AsIGxlYWZubywgZGNwLSZndDtidWRtaW4sIG5ld3ZhbCk7PGJyPg0KJmd0OyArwqAg
wqAgwqAgwqAgwqAgwqAgwqBkYlNwbGl0KChkbXRyZWVfdCAqKSBkY3AsIGxlYWZubywgZGNwLSZn
dDtidWRtaW4sIG5ld3ZhbCwgdHJ1ZSk7PGJyPg0KJmd0O8KgIMKgIMKgIMKgfSBlbHNlIHs8YnI+
DQomZ3Q7IC3CoCDCoCDCoCDCoCDCoCDCoCDCoHJjID0gZGJKb2luKChkbXRyZWVfdCAqKSBkY3As
IGxlYWZubywgbmV3dmFsKTs8YnI+DQomZ3Q7ICvCoCDCoCDCoCDCoCDCoCDCoCDCoHJjID0gZGJK
b2luKChkbXRyZWVfdCAqKSBkY3AsIGxlYWZubywgbmV3dmFsLCB0cnVlKTs8YnI+DQomZ3Q7wqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqBpZiAocmMpIHs8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqByZWxlYXNlX21ldGFwYWdlKG1wKTs8YnI+DQomZ3Q7wqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqByZXR1cm4gcmM7PGJyPg0KJmd0OyBAQCAtMjU1NCw3
ICsyNTU0LDcgQEAgZGJBZGpDdGwoc3RydWN0IGJtYXAgKiBibXAsIHM2NCBibGtubywgaW50IG5l
d3ZhbCwgaW50IGFsbG9jLCBpbnQgbGV2ZWwpPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgICovPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgaWYgKGFsbG9jKSB7PGJyPg0KJmd0O8KgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgZGJK
b2luKChkbXRyZWVfdCAqKSBkY3AsIGxlYWZubyw8YnI+DQomZ3Q7IC3CoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCBvbGR2YWwp
Ozxicj4NCiZndDsgK8KgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIG9sZHZhbCwgdHJ1ZSk7PGJyPg0KJmd0O8KgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgfSBlbHNlIHs8YnI+DQomZ3Q7wqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAv
KiB0aGUgZGJKb2luKCkgYWJvdmUgbWlnaHQgaGF2ZTxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCAqIGNhdXNlZCBhIGxh
cmdlciBiaW5hcnkgYnVkZHkgc3lzdGVtPGJyPg0KJmd0OyBAQCAtMjU2NCw5ICsyNTY0LDkgQEAg
ZGJBZGpDdGwoc3RydWN0IGJtYXAgKiBibXAsIHM2NCBibGtubywgaW50IG5ld3ZhbCwgaW50IGFs
bG9jLCBpbnQgbGV2ZWwpPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgICovPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgaWYgKGRjcC0mZ3Q7c3Ry
ZWVbdGldID09IE5PRlJFRSk8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqBkYkJhY2tTcGxpdCgoZG10
cmVlX3QgKik8YnI+DQomZ3Q7IC3CoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoGRjcCwgbGVh
Zm5vKTs8YnI+DQomZ3Q7ICvCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoGRjcCwgbGVhZm5v
LCB0cnVlKTs8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqBkYlNwbGl0KChkbXRyZWVfdCAqKSBkY3AsIGxlYWZubyw8YnI+
DQomZ3Q7IC3CoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoGRjcC0mZ3Q7YnVkbWluLCBvbGR2YWwpOzxicj4NCiZndDsgK8Kg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgZGNwLSZndDtidWRtaW4sIG9sZHZhbCwgdHJ1ZSk7PGJyPg0KJmd0O8KgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgfTxicj4NCiZndDvCoCDCoDxi
cj4NCiZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoC8q
IHJlbGVhc2UgdGhlIGJ1ZmZlciBhbmQgcmV0dXJuIHRoZSBlcnJvci48YnI+DQomZ3Q7IEBAIC0y
NjE0LDcgKzI2MTQsNyBAQCBkYkFkakN0bChzdHJ1Y3QgYm1hcCAqIGJtcCwgczY0IGJsa25vLCBp
bnQgbmV3dmFsLCBpbnQgYWxsb2MsIGludCBsZXZlbCk8YnI+DQomZ3Q7wqAgwqAgKjxicj4NCiZn
dDvCoCDCoCAqIHNlcmlhbGl6YXRpb246IElSRUFEX0xPQ0soaXBibWFwKSBvciBJV1JJVEVfTE9D
SyhpcGJtYXApIGhlbGQgb24gZW50cnkvZXhpdDs8YnI+DQomZ3Q7wqAgwqAgKi88YnI+DQomZ3Q7
IC1zdGF0aWMgdm9pZCBkYlNwbGl0KGRtdHJlZV90ICogdHAsIGludCBsZWFmbm8sIGludCBzcGxp
dHN6LCBpbnQgbmV3dmFsKTxicj4NCiZndDsgK3N0YXRpYyB2b2lkIGRiU3BsaXQoZG10cmVlX3Qg
KiB0cCwgaW50IGxlYWZubywgaW50IHNwbGl0c3osIGludCBuZXd2YWwsIGJvb2wgaXNfY3RsKTxi
cj4NCiZndDvCoCDCoHs8YnI+DQomZ3Q7wqAgwqAgwqAgwqBpbnQgYnVkc3o7PGJyPg0KJmd0O8Kg
IMKgIMKgIMKgaW50IGN1cnN6Ozxicj4NCiZndDsgQEAgLTI2MzYsNyArMjYzNiw3IEBAIHN0YXRp
YyB2b2lkIGRiU3BsaXQoZG10cmVlX3QgKiB0cCwgaW50IGxlYWZubywgaW50IHNwbGl0c3osIGlu
dCBuZXd2YWwpPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgIMKgd2hpbGUgKGN1cnN6ICZn
dDs9IHNwbGl0c3opIHs8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAvKiB1cGRhdGUgdGhlIGJ1ZGR5JiMzOTtzIGxlYWYgd2l0aCBpdHMgbmV3IHZhbHVlLjxicj4N
CiZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCAqLzxicj4NCiZndDsgLcKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgZGJBZGpUcmVlKHRwLCBsZWFmbm8gXiBidWRz
eiwgY3Vyc3opOzxicj4NCiZndDsgK8KgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgZGJB
ZGpUcmVlKHRwLCBsZWFmbm8gXiBidWRzeiwgY3Vyc3osIGlzX2N0bCk7PGJyPg0KJmd0O8KgIMKg
PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgLyogb24gdG8gdGhl
IG5leHQgc2l6ZSBhbmQgYnVkZHkuPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgICovPGJyPg0KJmd0OyBAQCAtMjY0OCw3ICsyNjQ4LDcgQEAgc3RhdGljIHZvaWQg
ZGJTcGxpdChkbXRyZWVfdCAqIHRwLCBpbnQgbGVhZm5vLCBpbnQgc3BsaXRzeiwgaW50IG5ld3Zh
bCk8YnI+DQomZ3Q7wqAgwqAgwqAgwqAvKiBhZGp1c3QgdGhlIGRtYXAgdHJlZSB0byByZWZsZWN0
IHRoZSBzcGVjaWZpZWQgbGVhZiYjMzk7cyBuZXc8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgKiB2YWx1
ZS48YnI+DQomZ3Q7wqAgwqAgwqAgwqAgKi88YnI+DQomZ3Q7IC3CoCDCoCDCoGRiQWRqVHJlZSh0
cCwgbGVhZm5vLCBuZXd2YWwpOzxicj4NCiZndDsgK8KgIMKgIMKgZGJBZGpUcmVlKHRwLCBsZWFm
bm8sIG5ld3ZhbCwgaXNfY3RsKTs8YnI+DQomZ3Q7wqAgwqB9PGJyPg0KJmd0O8KgIMKgPGJyPg0K
Jmd0O8KgIMKgPGJyPg0KJmd0OyBAQCAtMjY3OSw3ICsyNjc5LDcgQEAgc3RhdGljIHZvaWQgZGJT
cGxpdChkbXRyZWVfdCAqIHRwLCBpbnQgbGVhZm5vLCBpbnQgc3BsaXRzeiwgaW50IG5ld3ZhbCk8
YnI+DQomZ3Q7wqAgwqAgKjxicj4NCiZndDvCoCDCoCAqIHNlcmlhbGl6YXRpb246IElSRUFEX0xP
Q0soaXBibWFwKSBvciBJV1JJVEVfTE9DSyhpcGJtYXApIGhlbGQgb24gZW50cnkvZXhpdDs8YnI+
DQomZ3Q7wqAgwqAgKi88YnI+DQomZ3Q7IC1zdGF0aWMgaW50IGRiQmFja1NwbGl0KGRtdHJlZV90
ICogdHAsIGludCBsZWFmbm8pPGJyPg0KJmd0OyArc3RhdGljIGludCBkYkJhY2tTcGxpdChkbXRy
ZWVfdCAqIHRwLCBpbnQgbGVhZm5vLCBib29sIGlzX2N0bCk8YnI+DQomZ3Q7wqAgwqB7PGJyPg0K
Jmd0O8KgIMKgIMKgIMKgaW50IGJ1ZHN6LCBidWQsIHcsIGJzeiwgc2l6ZTs8YnI+DQomZ3Q7wqAg
wqAgwqAgwqBpbnQgY3Vyc3o7PGJyPg0KJmd0OyBAQCAtMjczMCw3ICsyNzMwLDcgQEAgc3RhdGlj
IGludCBkYkJhY2tTcGxpdChkbXRyZWVfdCAqIHRwLCBpbnQgbGVhZm5vKTxicj4NCiZndDvCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCAqIHN5c3RlbSBpbiB0
d28uPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgICovPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgY3Vyc3ogPSBsZWFmW2J1ZF0gLSAxOzxicj4NCiZndDsgLcKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgZGJTcGxpdCh0cCwgYnVkLCBjdXJzeiwgY3Vyc3op
Ozxicj4NCiZndDsgK8KgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
ZGJTcGxpdCh0cCwgYnVkLCBjdXJzeiwgY3Vyc3osIGlzX2N0bCk7PGJyPg0KJmd0O8KgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgYnJlYWs7PGJyPg0KJmd0O8Kg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgfTxicj4NCiZndDvCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoH08YnI+DQomZ3Q7IEBAIC0yNzU4LDcgKzI3NTgsNyBAQCBzdGF0aWMgaW50IGRi
QmFja1NwbGl0KGRtdHJlZV90ICogdHAsIGludCBsZWFmbm8pPGJyPg0KJmd0O8KgIMKgICo8YnI+
DQomZ3Q7wqAgwqAgKiBSRVRVUk4gVkFMVUVTOiBub25lPGJyPg0KJmd0O8KgIMKgICovPGJyPg0K
Jmd0OyAtc3RhdGljIGludCBkYkpvaW4oZG10cmVlX3QgKiB0cCwgaW50IGxlYWZubywgaW50IG5l
d3ZhbCk8YnI+DQomZ3Q7ICtzdGF0aWMgaW50IGRiSm9pbihkbXRyZWVfdCAqIHRwLCBpbnQgbGVh
Zm5vLCBpbnQgbmV3dmFsLCBib29sIGlzX2N0bCk8YnI+DQomZ3Q7wqAgwqB7PGJyPg0KJmd0O8Kg
IMKgIMKgIMKgaW50IGJ1ZHN6LCBidWRkeTs8YnI+DQomZ3Q7wqAgwqAgwqAgwqBzOCAqbGVhZjs8
YnI+DQomZ3Q7IEBAIC0yODEzLDEyICsyODEzLDEyIEBAIHN0YXRpYyBpbnQgZGJKb2luKGRtdHJl
ZV90ICogdHAsIGludCBsZWFmbm8sIGludCBuZXd2YWwpPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgaWYgKGxlYWZubyAmbHQ7IGJ1ZGR5KSB7PGJyPg0KJmd0O8Kg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgLyogbGVhZm5vIGlz
IHRoZSBsZWZ0IGJ1ZGR5Ljxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCAqLzxicj4NCiZndDsgLcKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgZGJBZGpUcmVlKHRwLCBidWRkeSwgTk9GUkVFKTs8YnI+DQomZ3Q7
ICvCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoGRiQWRqVHJlZSh0
cCwgYnVkZHksIE5PRlJFRSwgaXNfY3RsKTs8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqB9IGVsc2Ugezxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoC8qIGJ1ZGR5IGlzIHRoZSBsZWZ0IGJ1ZGR5IGFuZCBiZWNv
bWVzPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgICogbGVhZm5vLjxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCAqLzxicj4NCiZndDsgLcKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgZGJBZGpUcmVlKHRwLCBsZWFmbm8sIE5PRlJFRSk7PGJyPg0KJmd0OyAr
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqBkYkFkalRyZWUodHAs
IGxlYWZubywgTk9GUkVFLCBpc19jdGwpOzxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoGxlYWZubyA9IGJ1ZGR5Ozxicj4NCiZndDvCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoH08YnI+DQomZ3Q7wqAgwqA8YnI+DQomZ3Q7IEBA
IC0yODMxLDcgKzI4MzEsNyBAQCBzdGF0aWMgaW50IGRiSm9pbihkbXRyZWVfdCAqIHRwLCBpbnQg
bGVhZm5vLCBpbnQgbmV3dmFsKTxicj4NCiZndDvCoCDCoDxicj4NCiZndDvCoCDCoCDCoCDCoC8q
IHVwZGF0ZSB0aGUgbGVhZiB2YWx1ZS48YnI+DQomZ3Q7wqAgwqAgwqAgwqAgKi88YnI+DQomZ3Q7
IC3CoCDCoCDCoGRiQWRqVHJlZSh0cCwgbGVhZm5vLCBuZXd2YWwpOzxicj4NCiZndDsgK8KgIMKg
IMKgZGJBZGpUcmVlKHRwLCBsZWFmbm8sIG5ld3ZhbCwgaXNfY3RsKTs8YnI+DQomZ3Q7wqAgwqA8
YnI+DQomZ3Q7wqAgwqAgwqAgwqByZXR1cm4gMDs8YnI+DQomZ3Q7wqAgwqB9PGJyPg0KJmd0OyBA
QCAtMjg1MiwxNSArMjg1MiwyMCBAQCBzdGF0aWMgaW50IGRiSm9pbihkbXRyZWVfdCAqIHRwLCBp
bnQgbGVhZm5vLCBpbnQgbmV3dmFsKTxicj4NCiZndDvCoCDCoCAqPGJyPg0KJmd0O8KgIMKgICog
UkVUVVJOIFZBTFVFUzogbm9uZTxicj4NCiZndDvCoCDCoCAqLzxicj4NCiZndDsgLXN0YXRpYyB2
b2lkIGRiQWRqVHJlZShkbXRyZWVfdCAqIHRwLCBpbnQgbGVhZm5vLCBpbnQgbmV3dmFsKTxicj4N
CiZndDsgK3N0YXRpYyB2b2lkIGRiQWRqVHJlZShkbXRyZWVfdCAqIHRwLCBpbnQgbGVhZm5vLCBp
bnQgbmV3dmFsLCBib29sIGlzX2N0bCk8YnI+DQomZ3Q7wqAgwqB7PGJyPg0KJmd0O8KgIMKgIMKg
IMKgaW50IGxwLCBwcCwgazs8YnI+DQomZ3Q7IC3CoCDCoCDCoGludCBtYXg7PGJyPg0KJmd0OyAr
wqAgwqAgwqBpbnQgbWF4LCBzaXplOzxicj4NCiZndDsgKzxicj4NCiZndDsgK8KgIMKgIMKgc2l6
ZSA9IGlzX2N0bCA/IENUTFRSRUVTSVpFIDogVFJFRVNJWkU7PGJyPg0KJmd0O8KgIMKgPGJyPg0K
Jmd0O8KgIMKgIMKgIMKgLyogcGljayB1cCB0aGUgaW5kZXggb2YgdGhlIGxlYWYgZm9yIHRoaXMg
bGVhZm5vLjxicj4NCiZndDvCoCDCoCDCoCDCoCAqLzxicj4NCiZndDvCoCDCoCDCoCDCoGxwID0g
bGVhZm5vICsgbGUzMl90b19jcHUodHAtJmd0O2RtdF9sZWFmaWR4KTs8YnI+DQomZ3Q7wqAgwqA8
YnI+DQomZ3Q7ICvCoCDCoCDCoGlmIChscCAmZ3Q7IHNpemUgfHwgbHAgJmx0OyAwKTxicj4NCiZn
dDsgK8KgIMKgIMKgIMKgIMKgIMKgIMKgcmV0dXJuOzxicj4NCiZndDsgKzxicj4NCiZndDvCoCDC
oCDCoCDCoC8qIGlzIHRoZSBjdXJyZW50IHZhbHVlIHRoZSBzYW1lIGFzIHRoZSBvbGQgdmFsdWUg
P8KgIGlmIHNvLDxicj4NCiZndDvCoCDCoCDCoCDCoCAqIHRoZXJlIGlzIG5vdGhpbmcgdG8gZG8u
PGJyPg0KJmd0O8KgIMKgIMKgIMKgICovPGJyPg0KPC9ibG9ja3F1b3RlPjwvZGl2Pg0K
--00000000000097518a0608c9cc97--


--===============1720380930814616144==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============1720380930814616144==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion

--===============1720380930814616144==--

