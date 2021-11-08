Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id DA08F44783E
	for <lists+jfs-discussion@lfdr.de>; Mon,  8 Nov 2021 02:16:16 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1mjtGP-0004Sw-Sd; Mon, 08 Nov 2021 01:15:57 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <mudongliangabcd@gmail.com>) id 1mjtGO-0004Sn-55
 for jfs-discussion@lists.sourceforge.net; Mon, 08 Nov 2021 01:15:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=TTjYV3f1HkMSkMYdNQDcb8Fpc3JDFNrMzhJhsj3l/7c=; b=kUbMsiR0Xv2YFFfhrCXFnfiuG4
 02YgClESb/MZbYZFQ8RgsXQkonhEU5mQyyMlO7A9IdYk603gyHCpKYxsiyK5j6UyExOnA4QMhbMTS
 6FNVIjF6gVLzm0S1wLgZyfYos/KMeMw+NoKf39/k6yxEteUgWMN0CG8L65mMNAvqQemo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=TTjYV3f1HkMSkMYdNQDcb8Fpc3JDFNrMzhJhsj3l/7c=; b=TpRaoYoXyOyS0IoHrqtNcrR78n
 baqEiHrBFE+Z3agV23aMPQxUI2Vod5gbtcwqjU6vzeZoeslbeFj5exqIwicoo9sjNfndac1n68yEY
 zkGV/Mu2mU3Ysn9x1nKHK4Ujo7wQgPHPnA/rH8V9zciTY8ikxNLFbL7uUfxQPYuKnXyQ=;
Received: from mail-ed1-f46.google.com ([209.85.208.46])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1mjtGK-005Wod-MG
 for jfs-discussion@lists.sourceforge.net; Mon, 08 Nov 2021 01:15:56 +0000
Received: by mail-ed1-f46.google.com with SMTP id b15so36641637edd.7
 for <jfs-discussion@lists.sourceforge.net>;
 Sun, 07 Nov 2021 17:15:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=TTjYV3f1HkMSkMYdNQDcb8Fpc3JDFNrMzhJhsj3l/7c=;
 b=qfUCKQNnO8SZSYmAB4c0/oEYmNEn7DpbxszUU52HEPh9lIGWWweQG8rVv4y/DmzJ1B
 uR8tsJbOr9MhP2ytO9CuMhc30n8m3mYUb1YmjhbwAmoDUTEpa6FhNrXgO2bJ1xfu9kBX
 v5I/VmwUbFW6ky1xt/C2oQi6olZs/5GFDEvduw1+OAXnrP55XpBas4dw1TpBJJpV0B+g
 o5CaLpLI7KBCJFWY02lKWDbBVu1LaOalIQtp6P6AhISFTSqFlHy02NodWlWmiMzfgqLZ
 gsj2ds5WdSR4ngBF7fEyLmpjtwNA4RMmZjNM7f0I1K0p43WWji9ylBVrEzfNaVkGyzxG
 E1NA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=TTjYV3f1HkMSkMYdNQDcb8Fpc3JDFNrMzhJhsj3l/7c=;
 b=ViU3XLwbNla4T3wDRgsEIjNhn/eWgQ8JDeKqbBuUd+GhLKfAmdwPbRQcRKnFw8H++X
 qddIJzA/gOe8jSeluzVMe0peBoOgYMMXETPuYwiwBBVVX11qtw1hdakN4wNgsIaepKPq
 UUzSCPlHvESQCB6ko4WK7hp3INeeJNLvH+o+IM+RhLJibv0T9VLE8ITXmS7oTqJ8Ko6d
 4anTq2OfPCaEhOC4vm68veJPEUXsDhqrVbnJd7MZc39Mj3V0m61fRRN7v4X+oT63mVvC
 3+C4pC26LaexvpOpVzh+7F1nEydlhPzovAD622bD9BaN76bz6DuaF66CCDDBfehsJPEs
 WSeg==
X-Gm-Message-State: AOAM532mmcsnKGpFK8YDSKpXFZQqIj4f0LqK/eUC8ychaTgdkdldnY0o
 c6GPuQg9Epk3wer0xwL+m5eQ1HOIcq/WXRDDP5DMmBQfamoyKc3N
X-Google-Smtp-Source: ABdhPJwZi8awbVTnDx+yL8ObGWQ8QTGBWiWuLJ2XTDOOC7SQhAgIk/pTTTAkYKncGBYPOEDfkoc7Zs0OCa0zxuFzdyk=
X-Received: by 2002:a05:6402:50d4:: with SMTP id
 h20mr45206180edb.80.1636334146267; 
 Sun, 07 Nov 2021 17:15:46 -0800 (PST)
MIME-Version: 1.0
References: <20210904023800.1813036-1-mudongliangabcd@gmail.com>
 <CAD-N9QV5OMe0ryEKaUYkwmNyOtu+Sgi7h2B0JFSK5Jj9bbQPQQ@mail.gmail.com>
 <5678317c-9fd2-4557-6e28-984a8b74b99c@oracle.com>
 <CAD-N9QXQ+E+j7d-+6oY4u0JWjiKSFoKj3mKEvHZ1CQiPbdLuMg@mail.gmail.com>
In-Reply-To: <CAD-N9QXQ+E+j7d-+6oY4u0JWjiKSFoKj3mKEvHZ1CQiPbdLuMg@mail.gmail.com>
From: Dongliang Mu <mudongliangabcd@gmail.com>
Date: Mon, 8 Nov 2021 09:15:19 +0800
Message-ID: <CAD-N9QVa0MQkuDMMrooTNEDR3Mqc0fE+j-+aq+Uu=GX6x=akJQ@mail.gmail.com>
To: Dave Kleikamp <dave.kleikamp@oracle.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Mon, Nov 8, 2021 at 9:10 AM Dongliang Mu wrote: > > On
 Thu, Sep 23, 2021 at 10:54 PM Dave Kleikamp wrote: > > > > On 9/22/21 19:53,
 Dongliang Mu wrote: > > > Any update on this thread? > > > > [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.46 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [mudongliangabcd[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.46 listed in wl.mailspike.net]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-Headers-End: 1mjtGK-005Wod-MG
Subject: Re: [Jfs-discussion] [PATCH v2] JFS: fix memleak in jfs_mount
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
Cc: jfs-discussion@lists.sourceforge.net,
 linux-kernel <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

On Mon, Nov 8, 2021 at 9:10 AM Dongliang Mu <mudongliangabcd@gmail.com> wrote:
>
> On Thu, Sep 23, 2021 at 10:54 PM Dave Kleikamp <dave.kleikamp@oracle.com> wrote:
> >
> > On 9/22/21 19:53, Dongliang Mu wrote:
> > > Any update on this thread?
> >
> > Sorry for taking this long to get back to it. The patch looks good. It
> > should show up in linux-next shortly.
> >
>
> Hi Dave,
>
> In my local syzkaller testing, the upstream is still vulnerable to
> this patch. How does the patch applied in linux-next propagate to
> upstream?

Please ignore it. I have found the commit in the upstream.

>
> > Shaggy
> >
> > >
> > > On Sat, Sep 4, 2021 at 10:38 AM Dongliang Mu <mudongliangabcd@gmail.com> wrote:
> > >>
> > >> In jfs_mount, when diMount(ipaimap2) fails, it goes to errout35. However,
> > >> the following code does not free ipaimap2 allocated by diReadSpecial.
> > >>
> > >> Fix this by refactoring the error handling code of jfs_mount. To be
> > >> specific, modify the lable name and free ipaimap2 when the above error
> > >> ocurrs.
> > >>
> > >> Fixes: 1da177e4c3f4 ("Linux-2.6.12-rc2")
> > >> Signed-off-by: Dongliang Mu <mudongliangabcd@gmail.com>
> > >> ---
> > >> v1->v2: change "return rc" to "goto out"; fix one coding style
> > >>   fs/jfs/jfs_mount.c | 51 ++++++++++++++++++++--------------------------
> > >>   1 file changed, 22 insertions(+), 29 deletions(-)
> > >>
> > >> diff --git a/fs/jfs/jfs_mount.c b/fs/jfs/jfs_mount.c
> > >> index 5d7d7170c03c..aa4ff7bcaff2 100644
> > >> --- a/fs/jfs/jfs_mount.c
> > >> +++ b/fs/jfs/jfs_mount.c
> > >> @@ -81,14 +81,14 @@ int jfs_mount(struct super_block *sb)
> > >>           * (initialize mount inode from the superblock)
> > >>           */
> > >>          if ((rc = chkSuper(sb))) {
> > >> -               goto errout20;
> > >> +               goto out;
> > >>          }
> > >>
> > >>          ipaimap = diReadSpecial(sb, AGGREGATE_I, 0);
> > >>          if (ipaimap == NULL) {
> > >>                  jfs_err("jfs_mount: Failed to read AGGREGATE_I");
> > >>                  rc = -EIO;
> > >> -               goto errout20;
> > >> +               goto out;
> > >>          }
> > >>          sbi->ipaimap = ipaimap;
> > >>
> > >> @@ -99,7 +99,7 @@ int jfs_mount(struct super_block *sb)
> > >>           */
> > >>          if ((rc = diMount(ipaimap))) {
> > >>                  jfs_err("jfs_mount: diMount(ipaimap) failed w/rc = %d", rc);
> > >> -               goto errout21;
> > >> +               goto err_ipaimap;
> > >>          }
> > >>
> > >>          /*
> > >> @@ -108,7 +108,7 @@ int jfs_mount(struct super_block *sb)
> > >>          ipbmap = diReadSpecial(sb, BMAP_I, 0);
> > >>          if (ipbmap == NULL) {
> > >>                  rc = -EIO;
> > >> -               goto errout22;
> > >> +               goto err_umount_ipaimap;
> > >>          }
> > >>
> > >>          jfs_info("jfs_mount: ipbmap:0x%p", ipbmap);
> > >> @@ -120,7 +120,7 @@ int jfs_mount(struct super_block *sb)
> > >>           */
> > >>          if ((rc = dbMount(ipbmap))) {
> > >>                  jfs_err("jfs_mount: dbMount failed w/rc = %d", rc);
> > >> -               goto errout22;
> > >> +               goto err_ipbmap;
> > >>          }
> > >>
> > >>          /*
> > >> @@ -139,7 +139,7 @@ int jfs_mount(struct super_block *sb)
> > >>                  if (!ipaimap2) {
> > >>                          jfs_err("jfs_mount: Failed to read AGGREGATE_I");
> > >>                          rc = -EIO;
> > >> -                       goto errout35;
> > >> +                       goto err_umount_ipbmap;
> > >>                  }
> > >>                  sbi->ipaimap2 = ipaimap2;
> > >>
> > >> @@ -151,7 +151,7 @@ int jfs_mount(struct super_block *sb)
> > >>                  if ((rc = diMount(ipaimap2))) {
> > >>                          jfs_err("jfs_mount: diMount(ipaimap2) failed, rc = %d",
> > >>                                  rc);
> > >> -                       goto errout35;
> > >> +                       goto err_ipaimap2;
> > >>                  }
> > >>          } else
> > >>                  /* Secondary aggregate inode table is not valid */
> > >> @@ -168,7 +168,7 @@ int jfs_mount(struct super_block *sb)
> > >>                  jfs_err("jfs_mount: Failed to read FILESYSTEM_I");
> > >>                  /* open fileset secondary inode allocation map */
> > >>                  rc = -EIO;
> > >> -               goto errout40;
> > >> +               goto err_umount_ipaimap2;
> > >>          }
> > >>          jfs_info("jfs_mount: ipimap:0x%p", ipimap);
> > >>
> > >> @@ -178,41 +178,34 @@ int jfs_mount(struct super_block *sb)
> > >>          /* initialize fileset inode allocation map */
> > >>          if ((rc = diMount(ipimap))) {
> > >>                  jfs_err("jfs_mount: diMount failed w/rc = %d", rc);
> > >> -               goto errout41;
> > >> +               goto err_ipimap;
> > >>          }
> > >>
> > >> -       goto out;
> > >> +       return rc;
> > >>
> > >>          /*
> > >>           *      unwind on error
> > >>           */
> > >> -      errout41:                /* close fileset inode allocation map inode */
> > >> +err_ipimap:
> > >> +       /* close fileset inode allocation map inode */
> > >>          diFreeSpecial(ipimap);
> > >> -
> > >> -      errout40:                /* fileset closed */
> > >> -
> > >> +err_umount_ipaimap2:
> > >>          /* close secondary aggregate inode allocation map */
> > >> -       if (ipaimap2) {
> > >> +       if (ipaimap2)
> > >>                  diUnmount(ipaimap2, 1);
> > >> +err_ipaimap2:
> > >> +       /* close aggregate inodes */
> > >> +       if (ipaimap2)
> > >>                  diFreeSpecial(ipaimap2);
> > >> -       }
> > >> -
> > >> -      errout35:
> > >> -
> > >> -       /* close aggregate block allocation map */
> > >> +err_umount_ipbmap:     /* close aggregate block allocation map */
> > >>          dbUnmount(ipbmap, 1);
> > >> +err_ipbmap:            /* close aggregate inodes */
> > >>          diFreeSpecial(ipbmap);
> > >> -
> > >> -      errout22:                /* close aggregate inode allocation map */
> > >> -
> > >> +err_umount_ipaimap:    /* close aggregate inode allocation map */
> > >>          diUnmount(ipaimap, 1);
> > >> -
> > >> -      errout21:                /* close aggregate inodes */
> > >> +err_ipaimap:           /* close aggregate inodes */
> > >>          diFreeSpecial(ipaimap);
> > >> -      errout20:                /* aggregate closed */
> > >> -
> > >> -      out:
> > >> -
> > >> +out:
> > >>          if (rc)
> > >>                  jfs_err("Mount JFS Failure: %d", rc);
> > >>
> > >> --
> > >> 2.25.1
> > >>


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
