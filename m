Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B9295A78369
	for <lists+jfs-discussion@lfdr.de>; Tue,  1 Apr 2025 22:42:30 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1tziQg-0001eq-1L;
	Tue, 01 Apr 2025 20:41:50 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <suchitkarunakaran@gmail.com>) id 1tzhaj-0000O4-6E
 for jfs-discussion@lists.sourceforge.net;
 Tue, 01 Apr 2025 19:48:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=h0GUapCtkF+aJmnvknXsY1kMwGylOvdYakuOa+/WEVM=; b=SXyEv9/kbedjgWNvV2E9pSQOim
 KG4vclQlXlBHtKkvcmUPcIl7kOCoMg28foGajEC9rIbSzqg+KGW+/J0DyfWpEWPoc6h0qt7OPSyjl
 hSyII9J6kEjk/VHLxXXsTPBZ+r3epAUQebuoflotvEFn58c+ZhH0y+aIwO3/FHKNgyiw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=h0GUapCtkF+aJmnvknXsY1kMwGylOvdYakuOa+/WEVM=; b=Ro5cV66HEu9VxEKnWS0xBKF2vt
 Jx7FBOBruSMtGvIQ+vEPLOHfq4OGsap0EZE3Q+Pbk6mNSrTXhUWElafaNOxGKC7JFy5EurWe9yL59
 nZNb4wqP/Sf+VRDPHRd73pfWJKlwc+8HYhB4FWrx/kzDbkImjueZNPG4ozL6Qt7mB1Tk=;
Received: from mail-oi1-f171.google.com ([209.85.167.171])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1tzhaS-0008Jt-O7 for jfs-discussion@lists.sourceforge.net;
 Tue, 01 Apr 2025 19:48:09 +0000
Received: by mail-oi1-f171.google.com with SMTP id
 5614622812f47-3f68460865aso4033290b6e.0
 for <jfs-discussion@lists.sourceforge.net>;
 Tue, 01 Apr 2025 12:47:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1743536867; x=1744141667; darn=lists.sourceforge.net;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=h0GUapCtkF+aJmnvknXsY1kMwGylOvdYakuOa+/WEVM=;
 b=WfgChyyg65ZyTTxgYGjuHjMpadJ/mWHT2VxCbZtuXImfxC+QvoiKB4CS82pZrbwoRR
 RZdVll2chNuMrPHQB4/non3hwkrLCrXU8qeCcMofHnwshW52WmLyaMjSo8l756pgPYsX
 KnYuJHu4iln497SESvdpZgGR32huvSwq5+sG2q+lCr3YtFaTst2Aa9QvG1SqL/Ezc0KT
 0dSWD07mvSrkx0PhqmZ1Xxt1mAAIcY1OsxQBMTcOPrWZj+wHEWf7jZV6tZN6TBYj0ucp
 AcaDQXf/WZgrBhJXAvMda/6/G56hhs7nm/VLVZ9HIqy5bgozAWlz4dZVa/ZT6EG4mDf/
 j3/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1743536867; x=1744141667;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=h0GUapCtkF+aJmnvknXsY1kMwGylOvdYakuOa+/WEVM=;
 b=I5sqsUjsmmfksMCg2EeyqCql9MPi138BrjxxkVxQHnC/j87sugHoVBM0lSWhjyi3q8
 K6Q+qW13LtmFRLIaIr2Bk2PV6wx2zQjbAA5LCPWmzeIa69etldet4GRuusd+szFNJoGO
 gsb02rVd0lCqzSg2z6s+++o5HA6KS+Kjd6fmU8GL2QSwMv4zBip+7btIV+w6RIVwydEF
 RNfwBK1sGh9awAuTGfqbts4dov6O9250Zx6GlMgkpHKc2MtRh3Gjj7GmJk2uHrsX3S/3
 zeKq+L5DOO4SfXFcdY3hHqxl/tF9PzhfKfcEa44FYMJQ4OZlSKOAZ1XbK/D/Cwa62Fy5
 Omfw==
X-Gm-Message-State: AOJu0YyvWieQNUQawcoAU4HB0Sg+XgdfyaY0jrlfgt26SyURlbQA/gGo
 YTmPHLagKo47Y6FKeligJfMIoCRL12Jzl64biNZgLbxmvjVftt8fz7YOX28Tg1Y3jG0Rt3GN+zB
 j6yQxIksaaJ/Hsrdvg60tk45AIkUtJi5o
X-Gm-Gg: ASbGncsKvvm537yhS+yDqtd+sYFS7U40miEtvWzOdxyr/D1WChx+NJk48p5b69R1Wn+
 ZW++XjpvwsV6MZwfgt8lPl+AqhxSXKjKajvyhB++gwXYvxGcftixJ5qnKoEuE/JGN/V5+IgDZ6e
 VmApH/SXIEvw5S7/Y9xnu/7kkM/3cmMUmh7SVLyxRt7N4=
X-Google-Smtp-Source: AGHT+IGPjCrmzw/XDm5xjnra5o36qmI8DwIPo6nmsgsjoppgZkeeCLCa8S0BjRkNqGw8Xe4bzuFDqrYyM9ywdEyhzKE=
X-Received: by 2002:a05:6808:308a:b0:3f6:7c2c:6d07 with SMTP id
 5614622812f47-3ffe3fe53a0mr1958451b6e.13.1743536867041; Tue, 01 Apr 2025
 12:47:47 -0700 (PDT)
MIME-Version: 1.0
References: <20250302191558.47180-1-suchitkarunakaran@gmail.com>
 <e495bf9c-9fba-44ce-99fe-04879f8dd0c2@oracle.com>
 <CAO9wTFgMCsS9L1PwpkDr48t9R4hO2UvFRwbPu2mMQMP0aqD+cQ@mail.gmail.com>
 <1f54efc6-045b-475f-a1f1-918377af8960@oracle.com>
In-Reply-To: <1f54efc6-045b-475f-a1f1-918377af8960@oracle.com>
Date: Wed, 2 Apr 2025 01:17:34 +0530
X-Gm-Features: AQ5f1JrYdtWzTrFHL53Zrswoc8oaiB5m-Cg8SXEi4FO0Tyg-_lyjJG5WH0MG45s
Message-ID: <CAO9wTFidJM4-mYKxTVZa7SOAZfWs++kHFYKW5JQV-DkXKQct1w@mail.gmail.com>
To: Dave Kleikamp <dave.kleikamp@oracle.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software, running on the system "util-spamd-2.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Alright, I'll do as you suggest. Thanks. On Wed, 2 Apr 2025
    at 00:40, Dave Kleikamp wrote: > On 3/12/25 1:28PM, Suchit K wrote: > > Hi
    Dave, > > Thanks for the comments. I’m still a beginner so I wanted to
   share my > > thoughts and check with you. Almost all references to the xt_getpage
    > [...] 
 
 Content analysis details:   (-0.2 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
                             provider
                             [suchitkarunakaran[at]gmail.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
                              no trust
                             [209.85.167.171 listed in list.dnswl.org]
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
  0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
                             The query to Validity was blocked.  See
                             https://knowledge.validity.com/hc/en-us/articles/20961730681243
                              for more information.
                             [209.85.167.171 listed in sa-accredit.habeas.com]
  0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
                             query to Validity was blocked.  See
                             https://knowledge.validity.com/hc/en-us/articles/20961730681243
                              for more information.
                            [209.85.167.171 listed in bl.score.senderscore.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
                             [209.85.167.171 listed in wl.mailspike.net]
  0.0 HTML_MESSAGE           BODY: HTML included in message
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
X-Headers-End: 1tzhaS-0008Jt-O7
X-Mailman-Approved-At: Tue, 01 Apr 2025 20:41:48 +0000
Subject: Re: [Jfs-discussion] [PATCH] jfs: jfs_xtree: replace XT_GETPAGE
 macro with xt_getpage() function
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
From: Suchit K via Jfs-discussion <jfs-discussion@lists.sourceforge.net>
Reply-To: Suchit K <suchitkarunakaran@gmail.com>
Cc: jfs-discussion@lists.sourceforge.net, linux-kernel@vger.kernel.org,
 skhan@linuxfoundation.org
Content-Type: multipart/mixed; boundary="===============6704250745150593104=="
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

--===============6704250745150593104==
Content-Type: multipart/alternative; boundary="0000000000009ce9ab0631bccff1"

--0000000000009ce9ab0631bccff1
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Alright, I'll do as you suggest. Thanks.

On Wed, 2 Apr 2025 at 00:40, Dave Kleikamp <dave.kleikamp@oracle.com> wrote=
:

> On 3/12/25 1:28PM, Suchit K wrote:
> > Hi Dave,
> > Thanks for the comments. I=E2=80=99m still a beginner so I wanted to sh=
are my
> > thoughts and check with you. Almost all references to the xt_getpage
> > function directly return the rc value obtained from it. I feel that
> > changing its return type to (xtpage_t *) might not be ideal, as it
> > would require modifying the code in multiple places. That said, if you
> > think changing the return value is the better approach, I=E2=80=99ll tr=
y to
> > change it. Also, I=E2=80=99ll update struct inode** ip to struct inode*=
 ip.
> > Thanks once again.
>
> Sorry for taking so long to respond.
>
> I really think that as long as we are replacing an ugly macro with a
> function, we should make the function actually return what we are
> interested in. A case could be made for either the metapage or the
> xtpage_t, but I would choose the xtpage_t. Of course, it should return
> an ERR_PTR if it fails. I know it's a little more work changing the
> callers to handle that, but the result would be a bit cleaner.
>
> Thanks,
> Shaggy
>
> >
> > On Tue, 11 Mar 2025 at 22:19, Dave Kleikamp <dave.kleikamp@oracle.com>
> wrote:
> >>
> >> On 3/2/25 1:15PM, Suchit Karunakaran wrote:
> >>> Replace legacy XT_GETPAGE macro with an inline function and update al=
l
> >>> instances of XT_GETPAGE in jfs_xtree.c file to use the new function.
> >>
> >> I like the idea, but as long as we are changing this to a function, I'=
d
> >> like to simplify it to return the xtpage (xtpage_t *). A NULL return
> >> would indicate a failure.
> >>
> >> Also, the first argument should just be "struct inode *ip". That shoul=
d
> >> eliminate your second patch.
> >>    >
> >>> Signed-off-by: Suchit Karunakaran <suchitkarunakaran@gmail.com>
> >>> ---
> >>>    fs/jfs/jfs_xtree.c | 86
> ++++++++++++++++++++++++++++------------------
> >>>    1 file changed, 52 insertions(+), 34 deletions(-)
> >>>
> >>> diff --git a/fs/jfs/jfs_xtree.c b/fs/jfs/jfs_xtree.c
> >>> index 5ee618d17e77..fb736a06ea58 100644
> >>> --- a/fs/jfs/jfs_xtree.c
> >>> +++ b/fs/jfs/jfs_xtree.c
> >>> @@ -49,26 +49,6 @@
> >>>
> >>>    #define XT_PAGE(IP, MP) BT_PAGE(IP, MP, xtpage_t, i_xtroot)
> >>>
> >>> -/* get page buffer for specified block address */
> >>> -/* ToDo: Replace this ugly macro with a function */
> >>> -#define XT_GETPAGE(IP, BN, MP, SIZE, P, RC)                         =
 \
> >>> -do {                                                                =
 \
> >>> -     BT_GETPAGE(IP, BN, MP, xtpage_t, SIZE, P, RC, i_xtroot);       =
 \
> >>> -     if (!(RC)) {                                                   =
 \
> >>> -             if ((le16_to_cpu((P)->header.nextindex) < XTENTRYSTART)
> || \
> >>> -                 (le16_to_cpu((P)->header.nextindex) >              =
 \
> >>> -                  le16_to_cpu((P)->header.maxentry)) ||             =
 \
> >>> -                 (le16_to_cpu((P)->header.maxentry) >               =
 \
> >>> -                  (((BN) =3D=3D 0) ? XTROOTMAXSLOT : PSIZE >>
> L2XTSLOTSIZE))) { \
> >>> -                     jfs_error((IP)->i_sb,                          =
 \
> >>> -                               "XT_GETPAGE: xtree page corrupt\n"); =
 \
> >>> -                     BT_PUTPAGE(MP);                                =
 \
> >>> -                     MP =3D NULL;                                   =
   \
> >>> -                     RC =3D -EIO;                                   =
   \
> >>> -             }                                                      =
 \
> >>> -     }                                                              =
 \
> >>> -} while (0)
> >>> -
> >>>    /* for consistency */
> >>>    #define XT_PUTPAGE(MP) BT_PUTPAGE(MP)
> >>>
> >>> @@ -114,6 +94,44 @@ static int xtSplitPage(tid_t tid, struct inode
> *ip, struct xtsplit * split,
> >>>    static int xtSplitRoot(tid_t tid, struct inode *ip,
> >>>                       struct xtsplit * split, struct metapage ** rmpp=
);
> >>>
> >>> +/*
> >>> + *   xt_getpage()
> >>> + *
> >>> + * function: get the page buffer for a specified block address.
> >>> + *
> >>> + * parameters:
> >>> + *   ip      - pointer to the inode
> >>> + *   bn      - block number (s64) of the xtree page to be retrieved;
> >>> + *   mp      - pointer to a metapage pointer where the page buffer i=
s
> returned;
> >>> + *   size    - size parameter to pass to BT_GETPAGE;
> >>> + *   p       - pointer to an xtpage_t pointer mapping the page's dat=
a.
> >>> + *
> >>> + * returns:
> >>> + *   0 on success, or -EIO if the page is corrupt or an error occurs=
.
> >>> + */
> >>> +
> >>> +static inline int xt_getpage(struct inode **ip, s64 bn, struct
> metapage **mp,
> >>> +                     unsigned int size, xtpage_t **p)
> >>> +{
> >>> +     int rc;
> >>> +
> >>> +     BT_GETPAGE(ip, bn, *mp, xtpage_t, size, *p, rc, i_xtroot);
> >>> +
> >>> +     if (!rc) {
> >>> +             if ((le16_to_cpu((*p)->header.nextindex) < XTENTRYSTART=
)
> ||
> >>> +                     (le16_to_cpu((*p)->header.nextindex) >
> >>> +                             le16_to_cpu((*p)->header.maxentry)) ||
> >>> +                     (le16_to_cpu((*p)->header.maxentry) >
> >>> +                             ((bn =3D=3D 0) ? XTROOTMAXSLOT : PSIZE =
>>
> L2XTSLOTSIZE))) {
> >>> +                     jfs_error(ip->i_sb, "xt_getpage: xtree page
> corrupt\n");
> >>> +                     BT_PUTPAGE(*mp);
> >>> +                     *mp =3D NULL;
> >>> +                     rc =3D -EIO;
> >>> +             }
> >>> +     }
> >>> +     return rc;
> >>> +}
> >>> +
> >>>    /*
> >>>     *  xtLookup()
> >>>     *
> >>> @@ -252,7 +270,7 @@ static int xtSearch(struct inode *ip, s64 xoff,
>  s64 *nextp,
> >>>         */
> >>>        for (bn =3D 0;;) {
> >>>                /* get/pin the page to search */
> >>> -             XT_GETPAGE(ip, bn, mp, PSIZE, p, rc);
> >>> +             rc =3D xt_getpage(ip, bn, &mp, PSIZE, &p);
> >>>                if (rc)
> >>>                        return rc;
> >>>
> >>> @@ -807,7 +825,7 @@ xtSplitUp(tid_t tid,
> >>>                 * insert router entry in parent for new right child
> page <rp>
> >>>                 */
> >>>                /* get/pin the parent page <sp> */
> >>> -             XT_GETPAGE(ip, parent->bn, smp, PSIZE, sp, rc);
> >>> +             rc =3D xt_getpage(ip, parent->bn, &smp, PSIZE, &sp);
> >>>                if (rc) {
> >>>                        XT_PUTPAGE(rcmp);
> >>>                        return rc;
> >>> @@ -1062,7 +1080,7 @@ xtSplitPage(tid_t tid, struct inode *ip,
> >>>         * update previous pointer of old next/right page of <sp>
> >>>         */
> >>>        if (nextbn !=3D 0) {
> >>> -             XT_GETPAGE(ip, nextbn, mp, PSIZE, p, rc);
> >>> +             rc =3D xt_getpage(ip, nextbn, &mp, PSIZE, &p);
> >>>                if (rc) {
> >>>                        XT_PUTPAGE(rmp);
> >>>                        goto clean_up;
> >>> @@ -1417,7 +1435,7 @@ int xtExtend(tid_t tid,         /* transaction
> id */
> >>>                        return rc;
> >>>
> >>>                /* get back old page */
> >>> -             XT_GETPAGE(ip, bn, mp, PSIZE, p, rc);
> >>> +             rc =3D xt_getpage(ip, bn, &mp, PSIZE, &p);
> >>>                if (rc)
> >>>                        return rc;
> >>>                /*
> >>> @@ -1433,7 +1451,7 @@ int xtExtend(tid_t tid,         /* transaction
> id */
> >>>                        XT_PUTPAGE(mp);
> >>>
> >>>                        /* get new child page */
> >>> -                     XT_GETPAGE(ip, bn, mp, PSIZE, p, rc);
> >>> +                     rc =3D xt_getpage(ip, bn, &mp, PSIZE, &p);
> >>>                        if (rc)
> >>>                                return rc;
> >>>
> >>> @@ -1711,7 +1729,7 @@ int xtUpdate(tid_t tid, struct inode *ip, xad_t
> * nxad)
> >>>                        return rc;
> >>>
> >>>                /* get back old page */
> >>> -             XT_GETPAGE(ip, bn, mp, PSIZE, p, rc);
> >>> +             rc =3D xt_getpage(ip, bn, &mp, PSIZE, &p);
> >>>                if (rc)
> >>>                        return rc;
> >>>                /*
> >>> @@ -1727,7 +1745,7 @@ int xtUpdate(tid_t tid, struct inode *ip, xad_t
> * nxad)
> >>>                        XT_PUTPAGE(mp);
> >>>
> >>>                        /* get new child page */
> >>> -                     XT_GETPAGE(ip, bn, mp, PSIZE, p, rc);
> >>> +                     rc =3D xt_getpage(ip, bn, &mp, PSIZE, &p);
> >>>                        if (rc)
> >>>                                return rc;
> >>>
> >>> @@ -1788,7 +1806,7 @@ int xtUpdate(tid_t tid, struct inode *ip, xad_t
> * nxad)
> >>>                XT_PUTPAGE(mp);
> >>>
> >>>                /* get new right page */
> >>> -             XT_GETPAGE(ip, bn, mp, PSIZE, p, rc);
> >>> +             rc =3D xt_getpage(ip, bn, &mp, PSIZE, &p);
> >>>                if (rc)
> >>>                        return rc;
> >>>
> >>> @@ -1864,7 +1882,7 @@ printf("xtUpdate.updateLeft.split p:0x%p\n", p)=
;
> >>>                        return rc;
> >>>
> >>>                /* get back old page */
> >>> -             XT_GETPAGE(ip, bn, mp, PSIZE, p, rc);
> >>> +             rc =3D xt_getpage(ip, bn, &mp, PSIZE, &p);
> >>>                if (rc)
> >>>                        return rc;
> >>>
> >>> @@ -1881,7 +1899,7 @@ printf("xtUpdate.updateLeft.split p:0x%p\n", p)=
;
> >>>                        XT_PUTPAGE(mp);
> >>>
> >>>                        /* get new child page */
> >>> -                     XT_GETPAGE(ip, bn, mp, PSIZE, p, rc);
> >>> +                     rc =3D xt_getpage(ip, bn, &mp, PSIZE, &p);
> >>>                        if (rc)
> >>>                                return rc;
> >>>
> >>> @@ -2268,7 +2286,7 @@ s64 xtTruncate(tid_t tid, struct inode *ip, s64
> newsize, int flag)
> >>>         * first access of each page:
> >>>         */
> >>>          getPage:
> >>> -     XT_GETPAGE(ip, bn, mp, PSIZE, p, rc);
> >>> +     rc =3D xt_getpage(ip, bn, &mp, PSIZE, &p);
> >>>        if (rc)
> >>>                return rc;
> >>>
> >>> @@ -2506,7 +2524,7 @@ s64 xtTruncate(tid_t tid, struct inode *ip, s64
> newsize, int flag)
> >>>
> >>>        /* get back the parent page */
> >>>        bn =3D parent->bn;
> >>> -     XT_GETPAGE(ip, bn, mp, PSIZE, p, rc);
> >>> +     rc =3D xt_getpage(ip, bn, &mp, PSIZE, &p);
> >>>        if (rc)
> >>>                return rc;
> >>>
> >>> @@ -2791,7 +2809,7 @@ s64 xtTruncate_pmap(tid_t tid, struct inode *ip=
,
> s64 committed_size)
> >>>                 * first access of each page:
> >>>                 */
> >>>          getPage:
> >>> -             XT_GETPAGE(ip, bn, mp, PSIZE, p, rc);
> >>> +             rc =3D xt_getpage(ip, bn, &mp, PSIZE, &p);
> >>>                if (rc)
> >>>                        return rc;
> >>>
> >>> @@ -2836,7 +2854,7 @@ s64 xtTruncate_pmap(tid_t tid, struct inode *ip=
,
> s64 committed_size)
> >>>
> >>>        /* get back the parent page */
> >>>        bn =3D parent->bn;
> >>> -     XT_GETPAGE(ip, bn, mp, PSIZE, p, rc);
> >>> +     rc =3D xt_getpage(ip, bn, &mp, PSIZE, &p);
> >>>        if (rc)
> >>>                return rc;
> >>>
> >>
>
>

--0000000000009ce9ab0631bccff1
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Alright, I&#39;ll do as you suggest. Thanks.</div><br><div=
 class=3D"gmail_quote gmail_quote_container"><div dir=3D"ltr" class=3D"gmai=
l_attr">On Wed, 2 Apr 2025 at 00:40, Dave Kleikamp &lt;<a href=3D"mailto:da=
ve.kleikamp@oracle.com">dave.kleikamp@oracle.com</a>&gt; wrote:<br></div><b=
lockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-le=
ft:1px solid rgb(204,204,204);padding-left:1ex">On 3/12/25 1:28PM, Suchit K=
 wrote:<br>
&gt; Hi Dave,<br>
&gt; Thanks for the comments. I=E2=80=99m still a beginner so I wanted to s=
hare my<br>
&gt; thoughts and check with you. Almost all references to the xt_getpage<b=
r>
&gt; function directly return the rc value obtained from it. I feel that<br=
>
&gt; changing its return type to (xtpage_t *) might not be ideal, as it<br>
&gt; would require modifying the code in multiple places. That said, if you=
<br>
&gt; think changing the return value is the better approach, I=E2=80=99ll t=
ry to<br>
&gt; change it. Also, I=E2=80=99ll update struct inode** ip to struct inode=
* ip.<br>
&gt; Thanks once again.<br>
<br>
Sorry for taking so long to respond.<br>
<br>
I really think that as long as we are replacing an ugly macro with a <br>
function, we should make the function actually return what we are <br>
interested in. A case could be made for either the metapage or the <br>
xtpage_t, but I would choose the xtpage_t. Of course, it should return <br>
an ERR_PTR if it fails. I know it&#39;s a little more work changing the <br=
>
callers to handle that, but the result would be a bit cleaner.<br>
<br>
Thanks,<br>
Shaggy<br>
<br>
&gt; <br>
&gt; On Tue, 11 Mar 2025 at 22:19, Dave Kleikamp &lt;<a href=3D"mailto:dave=
.kleikamp@oracle.com" target=3D"_blank">dave.kleikamp@oracle.com</a>&gt; wr=
ote:<br>
&gt;&gt;<br>
&gt;&gt; On 3/2/25 1:15PM, Suchit Karunakaran wrote:<br>
&gt;&gt;&gt; Replace legacy XT_GETPAGE macro with an inline function and up=
date all<br>
&gt;&gt;&gt; instances of XT_GETPAGE in jfs_xtree.c file to use the new fun=
ction.<br>
&gt;&gt;<br>
&gt;&gt; I like the idea, but as long as we are changing this to a function=
, I&#39;d<br>
&gt;&gt; like to simplify it to return the xtpage (xtpage_t *). A NULL retu=
rn<br>
&gt;&gt; would indicate a failure.<br>
&gt;&gt;<br>
&gt;&gt; Also, the first argument should just be &quot;struct inode *ip&quo=
t;. That should<br>
&gt;&gt; eliminate your second patch.<br>
&gt;&gt;=C2=A0 =C2=A0 &gt;<br>
&gt;&gt;&gt; Signed-off-by: Suchit Karunakaran &lt;<a href=3D"mailto:suchit=
karunakaran@gmail.com" target=3D"_blank">suchitkarunakaran@gmail.com</a>&gt=
;<br>
&gt;&gt;&gt; ---<br>
&gt;&gt;&gt;=C2=A0 =C2=A0 fs/jfs/jfs_xtree.c | 86 +++++++++++++++++++++++++=
+++------------------<br>
&gt;&gt;&gt;=C2=A0 =C2=A0 1 file changed, 52 insertions(+), 34 deletions(-)=
<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; diff --git a/fs/jfs/jfs_xtree.c b/fs/jfs/jfs_xtree.c<br>
&gt;&gt;&gt; index 5ee618d17e77..fb736a06ea58 100644<br>
&gt;&gt;&gt; --- a/fs/jfs/jfs_xtree.c<br>
&gt;&gt;&gt; +++ b/fs/jfs/jfs_xtree.c<br>
&gt;&gt;&gt; @@ -49,26 +49,6 @@<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt;=C2=A0 =C2=A0 #define XT_PAGE(IP, MP) BT_PAGE(IP, MP, xtpage_t,=
 i_xtroot)<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; -/* get page buffer for specified block address */<br>
&gt;&gt;&gt; -/* ToDo: Replace this ugly macro with a function */<br>
&gt;&gt;&gt; -#define XT_GETPAGE(IP, BN, MP, SIZE, P, RC)=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 \=
<br>
&gt;&gt;&gt; -do {=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0\<br>
&gt;&gt;&gt; -=C2=A0 =C2=A0 =C2=A0BT_GETPAGE(IP, BN, MP, xtpage_t, SIZE, P,=
 RC, i_xtroot);=C2=A0 =C2=A0 =C2=A0 =C2=A0 \<br>
&gt;&gt;&gt; -=C2=A0 =C2=A0 =C2=A0if (!(RC)) {=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 \<br>
&gt;&gt;&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if ((le16_to_=
cpu((P)-&gt;header.nextindex) &lt; XTENTRYSTART) || \<br>
&gt;&gt;&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0(le16_to_cpu((P)-&gt;header.nextindex) &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0\<br>
&gt;&gt;&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 le16_to_cpu((P)-&gt;header.maxentry)) ||=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 \<br>
&gt;&gt;&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0(le16_to_cpu((P)-&gt;header.maxentry) &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 \<br>
&gt;&gt;&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 (((BN) =3D=3D 0) ? XTROOTMAXSLOT : PSIZE &gt;&gt; L2XTSLOTSIZE))) { \<b=
r>
&gt;&gt;&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0jfs_error((IP)-&gt;i_sb,=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0\<br>
&gt;&gt;&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&quot;XT_GETPAGE: xtree=
 page corrupt\n&quot;);=C2=A0 \<br>
&gt;&gt;&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0BT_PUTPAGE(MP);=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0\<br>
&gt;&gt;&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0MP =3D NULL;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 \<br>
&gt;&gt;&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0RC =3D -EIO;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 \<br>
&gt;&gt;&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0}=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0\<br>
&gt;&gt;&gt; -=C2=A0 =C2=A0 =C2=A0}=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0\<br>
&gt;&gt;&gt; -} while (0)<br>
&gt;&gt;&gt; -<br>
&gt;&gt;&gt;=C2=A0 =C2=A0 /* for consistency */<br>
&gt;&gt;&gt;=C2=A0 =C2=A0 #define XT_PUTPAGE(MP) BT_PUTPAGE(MP)<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; @@ -114,6 +94,44 @@ static int xtSplitPage(tid_t tid, struct i=
node *ip, struct xtsplit * split,<br>
&gt;&gt;&gt;=C2=A0 =C2=A0 static int xtSplitRoot(tid_t tid, struct inode *i=
p,<br>
&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0struct xtsplit * split, struct metapage ** rmpp);<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; +/*<br>
&gt;&gt;&gt; + *=C2=A0 =C2=A0xt_getpage()<br>
&gt;&gt;&gt; + *<br>
&gt;&gt;&gt; + * function: get the page buffer for a specified block addres=
s.<br>
&gt;&gt;&gt; + *<br>
&gt;&gt;&gt; + * parameters:<br>
&gt;&gt;&gt; + *=C2=A0 =C2=A0ip=C2=A0 =C2=A0 =C2=A0 - pointer to the inode<=
br>
&gt;&gt;&gt; + *=C2=A0 =C2=A0bn=C2=A0 =C2=A0 =C2=A0 - block number (s64) of=
 the xtree page to be retrieved;<br>
&gt;&gt;&gt; + *=C2=A0 =C2=A0mp=C2=A0 =C2=A0 =C2=A0 - pointer to a metapage=
 pointer where the page buffer is returned;<br>
&gt;&gt;&gt; + *=C2=A0 =C2=A0size=C2=A0 =C2=A0 - size parameter to pass to =
BT_GETPAGE;<br>
&gt;&gt;&gt; + *=C2=A0 =C2=A0p=C2=A0 =C2=A0 =C2=A0 =C2=A0- pointer to an xt=
page_t pointer mapping the page&#39;s data.<br>
&gt;&gt;&gt; + *<br>
&gt;&gt;&gt; + * returns:<br>
&gt;&gt;&gt; + *=C2=A0 =C2=A00 on success, or -EIO if the page is corrupt o=
r an error occurs.<br>
&gt;&gt;&gt; + */<br>
&gt;&gt;&gt; +<br>
&gt;&gt;&gt; +static inline int xt_getpage(struct inode **ip, s64 bn, struc=
t metapage **mp,<br>
&gt;&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0unsigned int size, xtpage_t **p)<br>
&gt;&gt;&gt; +{<br>
&gt;&gt;&gt; +=C2=A0 =C2=A0 =C2=A0int rc;<br>
&gt;&gt;&gt; +<br>
&gt;&gt;&gt; +=C2=A0 =C2=A0 =C2=A0BT_GETPAGE(ip, bn, *mp, xtpage_t, size, *=
p, rc, i_xtroot);<br>
&gt;&gt;&gt; +<br>
&gt;&gt;&gt; +=C2=A0 =C2=A0 =C2=A0if (!rc) {<br>
&gt;&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if ((le16_to_=
cpu((*p)-&gt;header.nextindex) &lt; XTENTRYSTART) ||<br>
&gt;&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0(le16_to_cpu((*p)-&gt;header.nextindex) &gt;<br>
&gt;&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0le16_to_cpu((*p)-&gt;header.ma=
xentry)) ||<br>
&gt;&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0(le16_to_cpu((*p)-&gt;header.maxentry) &gt;<br>
&gt;&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0((bn =3D=3D 0) ? XTROOTMAXSLOT=
 : PSIZE &gt;&gt; L2XTSLOTSIZE))) {<br>
&gt;&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0jfs_error(ip-&gt;i_sb, &quot;xt_getpage: xtree page corrup=
t\n&quot;);<br>
&gt;&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0BT_PUTPAGE(*mp);<br>
&gt;&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0*mp =3D NULL;<br>
&gt;&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0rc =3D -EIO;<br>
&gt;&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
&gt;&gt;&gt; +=C2=A0 =C2=A0 =C2=A0}<br>
&gt;&gt;&gt; +=C2=A0 =C2=A0 =C2=A0return rc;<br>
&gt;&gt;&gt; +}<br>
&gt;&gt;&gt; +<br>
&gt;&gt;&gt;=C2=A0 =C2=A0 /*<br>
&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0*=C2=A0 xtLookup()<br>
&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0*<br>
&gt;&gt;&gt; @@ -252,7 +270,7 @@ static int xtSearch(struct inode *ip, s64 =
xoff,=C2=A0 =C2=A0s64 *nextp,<br>
&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0*/<br>
&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 for (bn =3D 0;;) {<br>
&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 /* get/=
pin the page to search */<br>
&gt;&gt;&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0XT_GETPAGE(ip=
, bn, mp, PSIZE, p, rc);<br>
&gt;&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0rc =3D xt_get=
page(ip, bn, &amp;mp, PSIZE, &amp;p);<br>
&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if (rc)=
<br>
&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 return rc;<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; @@ -807,7 +825,7 @@ xtSplitUp(tid_t tid,<br>
&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0*=
 insert router entry in parent for new right child page &lt;rp&gt;<br>
&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0*=
/<br>
&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 /* get/=
pin the parent page &lt;sp&gt; */<br>
&gt;&gt;&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0XT_GETPAGE(ip=
, parent-&gt;bn, smp, PSIZE, sp, rc);<br>
&gt;&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0rc =3D xt_get=
page(ip, parent-&gt;bn, &amp;smp, PSIZE, &amp;sp);<br>
&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if (rc)=
 {<br>
&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 XT_PUTPAGE(rcmp);<br>
&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 return rc;<br>
&gt;&gt;&gt; @@ -1062,7 +1080,7 @@ xtSplitPage(tid_t tid, struct inode *ip,=
<br>
&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0* update previous pointer of =
old next/right page of &lt;sp&gt;<br>
&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0*/<br>
&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 if (nextbn !=3D 0) {<br>
&gt;&gt;&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0XT_GETPAGE(ip=
, nextbn, mp, PSIZE, p, rc);<br>
&gt;&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0rc =3D xt_get=
page(ip, nextbn, &amp;mp, PSIZE, &amp;p);<br>
&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if (rc)=
 {<br>
&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 XT_PUTPAGE(rmp);<br>
&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 goto clean_up;<br>
&gt;&gt;&gt; @@ -1417,7 +1435,7 @@ int xtExtend(tid_t tid,=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0/* transaction id */<br>
&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 return rc;<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 /* get =
back old page */<br>
&gt;&gt;&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0XT_GETPAGE(ip=
, bn, mp, PSIZE, p, rc);<br>
&gt;&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0rc =3D xt_get=
page(ip, bn, &amp;mp, PSIZE, &amp;p);<br>
&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if (rc)=
<br>
&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 return rc;<br>
&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 /*<br>
&gt;&gt;&gt; @@ -1433,7 +1451,7 @@ int xtExtend(tid_t tid,=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0/* transaction id */<br>
&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 XT_PUTPAGE(mp);<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 /* get new child page */<br>
&gt;&gt;&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0XT_GETPAGE(ip, bn, mp, PSIZE, p, rc);<br>
&gt;&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0rc =3D xt_getpage(ip, bn, &amp;mp, PSIZE, &amp;p);<br>
&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 if (rc)<br>
&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 return rc;<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; @@ -1711,7 +1729,7 @@ int xtUpdate(tid_t tid, struct inode *ip=
, xad_t * nxad)<br>
&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 return rc;<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 /* get =
back old page */<br>
&gt;&gt;&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0XT_GETPAGE(ip=
, bn, mp, PSIZE, p, rc);<br>
&gt;&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0rc =3D xt_get=
page(ip, bn, &amp;mp, PSIZE, &amp;p);<br>
&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if (rc)=
<br>
&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 return rc;<br>
&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 /*<br>
&gt;&gt;&gt; @@ -1727,7 +1745,7 @@ int xtUpdate(tid_t tid, struct inode *ip=
, xad_t * nxad)<br>
&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 XT_PUTPAGE(mp);<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 /* get new child page */<br>
&gt;&gt;&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0XT_GETPAGE(ip, bn, mp, PSIZE, p, rc);<br>
&gt;&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0rc =3D xt_getpage(ip, bn, &amp;mp, PSIZE, &amp;p);<br>
&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 if (rc)<br>
&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 return rc;<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; @@ -1788,7 +1806,7 @@ int xtUpdate(tid_t tid, struct inode *ip=
, xad_t * nxad)<br>
&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 XT_PUTP=
AGE(mp);<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 /* get =
new right page */<br>
&gt;&gt;&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0XT_GETPAGE(ip=
, bn, mp, PSIZE, p, rc);<br>
&gt;&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0rc =3D xt_get=
page(ip, bn, &amp;mp, PSIZE, &amp;p);<br>
&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if (rc)=
<br>
&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 return rc;<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; @@ -1864,7 +1882,7 @@ printf(&quot;xtUpdate.updateLeft.split p=
:0x%p\n&quot;, p);<br>
&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 return rc;<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 /* get =
back old page */<br>
&gt;&gt;&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0XT_GETPAGE(ip=
, bn, mp, PSIZE, p, rc);<br>
&gt;&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0rc =3D xt_get=
page(ip, bn, &amp;mp, PSIZE, &amp;p);<br>
&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if (rc)=
<br>
&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 return rc;<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; @@ -1881,7 +1899,7 @@ printf(&quot;xtUpdate.updateLeft.split p=
:0x%p\n&quot;, p);<br>
&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 XT_PUTPAGE(mp);<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 /* get new child page */<br>
&gt;&gt;&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0XT_GETPAGE(ip, bn, mp, PSIZE, p, rc);<br>
&gt;&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0rc =3D xt_getpage(ip, bn, &amp;mp, PSIZE, &amp;p);<br>
&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 if (rc)<br>
&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 return rc;<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; @@ -2268,7 +2286,7 @@ s64 xtTruncate(tid_t tid, struct inode *=
ip, s64 newsize, int flag)<br>
&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0* first access of each page:<=
br>
&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0*/<br>
&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 getPage:<br>
&gt;&gt;&gt; -=C2=A0 =C2=A0 =C2=A0XT_GETPAGE(ip, bn, mp, PSIZE, p, rc);<br>
&gt;&gt;&gt; +=C2=A0 =C2=A0 =C2=A0rc =3D xt_getpage(ip, bn, &amp;mp, PSIZE,=
 &amp;p);<br>
&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 if (rc)<br>
&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 return =
rc;<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; @@ -2506,7 +2524,7 @@ s64 xtTruncate(tid_t tid, struct inode *=
ip, s64 newsize, int flag)<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 /* get back the parent page */<br>
&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 bn =3D parent-&gt;bn;<br>
&gt;&gt;&gt; -=C2=A0 =C2=A0 =C2=A0XT_GETPAGE(ip, bn, mp, PSIZE, p, rc);<br>
&gt;&gt;&gt; +=C2=A0 =C2=A0 =C2=A0rc =3D xt_getpage(ip, bn, &amp;mp, PSIZE,=
 &amp;p);<br>
&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 if (rc)<br>
&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 return =
rc;<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; @@ -2791,7 +2809,7 @@ s64 xtTruncate_pmap(tid_t tid, struct in=
ode *ip, s64 committed_size)<br>
&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0*=
 first access of each page:<br>
&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0*=
/<br>
&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 getPage:<br>
&gt;&gt;&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0XT_GETPAGE(ip=
, bn, mp, PSIZE, p, rc);<br>
&gt;&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0rc =3D xt_get=
page(ip, bn, &amp;mp, PSIZE, &amp;p);<br>
&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if (rc)=
<br>
&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 return rc;<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; @@ -2836,7 +2854,7 @@ s64 xtTruncate_pmap(tid_t tid, struct in=
ode *ip, s64 committed_size)<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 /* get back the parent page */<br>
&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 bn =3D parent-&gt;bn;<br>
&gt;&gt;&gt; -=C2=A0 =C2=A0 =C2=A0XT_GETPAGE(ip, bn, mp, PSIZE, p, rc);<br>
&gt;&gt;&gt; +=C2=A0 =C2=A0 =C2=A0rc =3D xt_getpage(ip, bn, &amp;mp, PSIZE,=
 &amp;p);<br>
&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 if (rc)<br>
&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 return =
rc;<br>
&gt;&gt;&gt;<br>
&gt;&gt;<br>
<br>
</blockquote></div>

--0000000000009ce9ab0631bccff1--


--===============6704250745150593104==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============6704250745150593104==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion

--===============6704250745150593104==--

