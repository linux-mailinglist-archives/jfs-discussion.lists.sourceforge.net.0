Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FA7044782F
	for <lists+jfs-discussion@lfdr.de>; Mon,  8 Nov 2021 02:11:55 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1mjtC8-0004Rm-Na; Mon, 08 Nov 2021 01:11:32 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <mudongliangabcd@gmail.com>) id 1mjtC7-0004Rg-3A
 for jfs-discussion@lists.sourceforge.net; Mon, 08 Nov 2021 01:11:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Tsoy82MCNMxkTfmdJ0FN5A69lk+98vELhtoCFupA4+o=; b=VJO9r1PHfUtLfrqgkWCEDpIzX/
 kCqUWXS+RQPZl9rU4Uxcog7UuE1QN4Rf3fXtMc8l3yITZkwx4wCQJIQh3Y14aexjBuL9+JC1tWhpo
 q/Rh7J6427hWv7zQHraif9C0hCyEXILkPK4CqEIcXkouaw3ln7suelafwZQjc1PT6hOc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Tsoy82MCNMxkTfmdJ0FN5A69lk+98vELhtoCFupA4+o=; b=OIvLtrw+PDegYL+N2krdmiTHb4
 RZIV9MlA4JJ4JSAHZy4phB8Ye/KcXzl9xWn9FJIorF9j1dy7ikjIEye+Rv43wayMMUj+DifddRsjG
 kMLrfpDe8qQhwGr+2dlvOMy+vLMMJ4YKGgAjAQt4ISy1BlJ2aU99gmR+uuWPZp1/v+lk=;
Received: from mail-ed1-f44.google.com ([209.85.208.44])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1mjtC6-0003hf-BM
 for jfs-discussion@lists.sourceforge.net; Mon, 08 Nov 2021 01:11:31 +0000
Received: by mail-ed1-f44.google.com with SMTP id b15so36615533edd.7
 for <jfs-discussion@lists.sourceforge.net>;
 Sun, 07 Nov 2021 17:11:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Tsoy82MCNMxkTfmdJ0FN5A69lk+98vELhtoCFupA4+o=;
 b=l5LsvtDxY2jOj3F6tEWLRywt+Iz98/ClRdePVTuzFaZEbxMR3UG84T1smqUpL+/ucm
 JTj31GoaYjXwXMFGj/8lePx4MUdAjywNso5epEKdCK4TrVJaXjFNLCF1+N7vWw2Powdx
 6q+/qaZr3Y4skcXNoJ5FEBGuG3Bp8h7T+AhF0n+bkVbjYNhatTtpaRb1VsNy+oinFjZM
 VEblpUxhEkRrY/2U28x4HCjK/W+2+ENF3wxrTjOzoVjKMqR3GOk8SSrCsX36DSO18ED9
 6OgiCs5prTYC03VQwXcNxK+A+WV487CbpevrM4Y5HxBdrf4OeNs2TriUY/A8mrE9Jnge
 KD5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Tsoy82MCNMxkTfmdJ0FN5A69lk+98vELhtoCFupA4+o=;
 b=38KRXW/1s0Lm7rE9BX+Z3+CYgRbA+JM40UMH4Vg4GYCgEzT/1WcuXC6B/QzC11boov
 l17AgeWT0ntYOz7ybfj+JqFvVh6FY6htPnUMIulV2J0PTr9J2XbHT5E4L0rpMuERIk/t
 oyv38AkZuwqMb8+IFQMI8eFSI0oTpEZeRR5Kze0a9uowGZmk+Ro/EUGhxCZ0Spc0oc0o
 q7phzJEBVzrgNWPhGtFLjmRPT/NJ2RfinFYtE7WYUD6PKP9M18VT0qkZiPiBvRylB63f
 AyiMJvP99y0llMK3juLDtn+C/pQtyzLluZxUmscQmPWaUzLTrZiAJ7+KDMc3tMpnCiDg
 v3Qg==
X-Gm-Message-State: AOAM530SljnGfL5l+Ty8azVCedB0lJUP04aiGpqU7pE3RpypoAxnyuYq
 EkEGD/PL7dgcv3W0pvgLqjFZFoI1yx/ec84nKgQ=
X-Google-Smtp-Source: ABdhPJzutOb+o6Ghdq1oYjze1+nMzto/EXZXo2kNkf3AIz0EEwvEvkAvSHHhPFqmVTVX8XJSc3g4rQu1EY1ehZB3u3s=
X-Received: by 2002:a17:907:72d4:: with SMTP id
 du20mr24308556ejc.419.1636333883850; 
 Sun, 07 Nov 2021 17:11:23 -0800 (PST)
MIME-Version: 1.0
References: <20210904023800.1813036-1-mudongliangabcd@gmail.com>
 <CAD-N9QV5OMe0ryEKaUYkwmNyOtu+Sgi7h2B0JFSK5Jj9bbQPQQ@mail.gmail.com>
 <5678317c-9fd2-4557-6e28-984a8b74b99c@oracle.com>
In-Reply-To: <5678317c-9fd2-4557-6e28-984a8b74b99c@oracle.com>
From: Dongliang Mu <mudongliangabcd@gmail.com>
Date: Mon, 8 Nov 2021 09:10:57 +0800
Message-ID: <CAD-N9QXQ+E+j7d-+6oY4u0JWjiKSFoKj3mKEvHZ1CQiPbdLuMg@mail.gmail.com>
To: Dave Kleikamp <dave.kleikamp@oracle.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Thu, Sep 23, 2021 at 10:54 PM Dave Kleikamp wrote: > >
 On 9/22/21 19:53, Dongliang Mu wrote: > > Any update on this thread? > > Sorry
 for taking this long to get back to it. The patch looks good. [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [mudongliangabcd[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.44 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.44 listed in list.dnswl.org]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-Headers-End: 1mjtC6-0003hf-BM
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

On Thu, Sep 23, 2021 at 10:54 PM Dave Kleikamp <dave.kleikamp@oracle.com> wrote:
>
> On 9/22/21 19:53, Dongliang Mu wrote:
> > Any update on this thread?
>
> Sorry for taking this long to get back to it. The patch looks good. It
> should show up in linux-next shortly.
>

Hi Dave,

In my local syzkaller testing, the upstream is still vulnerable to
this patch. How does the patch applied in linux-next propagate to
upstream?

> Shaggy
>
> >
> > On Sat, Sep 4, 2021 at 10:38 AM Dongliang Mu <mudongliangabcd@gmail.com> wrote:
> >>
> >> In jfs_mount, when diMount(ipaimap2) fails, it goes to errout35. However,
> >> the following code does not free ipaimap2 allocated by diReadSpecial.
> >>
> >> Fix this by refactoring the error handling code of jfs_mount. To be
> >> specific, modify the lable name and free ipaimap2 when the above error
> >> ocurrs.
> >>
> >> Fixes: 1da177e4c3f4 ("Linux-2.6.12-rc2")
> >> Signed-off-by: Dongliang Mu <mudongliangabcd@gmail.com>
> >> ---
> >> v1->v2: change "return rc" to "goto out"; fix one coding style
> >>   fs/jfs/jfs_mount.c | 51 ++++++++++++++++++++--------------------------
> >>   1 file changed, 22 insertions(+), 29 deletions(-)
> >>
> >> diff --git a/fs/jfs/jfs_mount.c b/fs/jfs/jfs_mount.c
> >> index 5d7d7170c03c..aa4ff7bcaff2 100644
> >> --- a/fs/jfs/jfs_mount.c
> >> +++ b/fs/jfs/jfs_mount.c
> >> @@ -81,14 +81,14 @@ int jfs_mount(struct super_block *sb)
> >>           * (initialize mount inode from the superblock)
> >>           */
> >>          if ((rc = chkSuper(sb))) {
> >> -               goto errout20;
> >> +               goto out;
> >>          }
> >>
> >>          ipaimap = diReadSpecial(sb, AGGREGATE_I, 0);
> >>          if (ipaimap == NULL) {
> >>                  jfs_err("jfs_mount: Failed to read AGGREGATE_I");
> >>                  rc = -EIO;
> >> -               goto errout20;
> >> +               goto out;
> >>          }
> >>          sbi->ipaimap = ipaimap;
> >>
> >> @@ -99,7 +99,7 @@ int jfs_mount(struct super_block *sb)
> >>           */
> >>          if ((rc = diMount(ipaimap))) {
> >>                  jfs_err("jfs_mount: diMount(ipaimap) failed w/rc = %d", rc);
> >> -               goto errout21;
> >> +               goto err_ipaimap;
> >>          }
> >>
> >>          /*
> >> @@ -108,7 +108,7 @@ int jfs_mount(struct super_block *sb)
> >>          ipbmap = diReadSpecial(sb, BMAP_I, 0);
> >>          if (ipbmap == NULL) {
> >>                  rc = -EIO;
> >> -               goto errout22;
> >> +               goto err_umount_ipaimap;
> >>          }
> >>
> >>          jfs_info("jfs_mount: ipbmap:0x%p", ipbmap);
> >> @@ -120,7 +120,7 @@ int jfs_mount(struct super_block *sb)
> >>           */
> >>          if ((rc = dbMount(ipbmap))) {
> >>                  jfs_err("jfs_mount: dbMount failed w/rc = %d", rc);
> >> -               goto errout22;
> >> +               goto err_ipbmap;
> >>          }
> >>
> >>          /*
> >> @@ -139,7 +139,7 @@ int jfs_mount(struct super_block *sb)
> >>                  if (!ipaimap2) {
> >>                          jfs_err("jfs_mount: Failed to read AGGREGATE_I");
> >>                          rc = -EIO;
> >> -                       goto errout35;
> >> +                       goto err_umount_ipbmap;
> >>                  }
> >>                  sbi->ipaimap2 = ipaimap2;
> >>
> >> @@ -151,7 +151,7 @@ int jfs_mount(struct super_block *sb)
> >>                  if ((rc = diMount(ipaimap2))) {
> >>                          jfs_err("jfs_mount: diMount(ipaimap2) failed, rc = %d",
> >>                                  rc);
> >> -                       goto errout35;
> >> +                       goto err_ipaimap2;
> >>                  }
> >>          } else
> >>                  /* Secondary aggregate inode table is not valid */
> >> @@ -168,7 +168,7 @@ int jfs_mount(struct super_block *sb)
> >>                  jfs_err("jfs_mount: Failed to read FILESYSTEM_I");
> >>                  /* open fileset secondary inode allocation map */
> >>                  rc = -EIO;
> >> -               goto errout40;
> >> +               goto err_umount_ipaimap2;
> >>          }
> >>          jfs_info("jfs_mount: ipimap:0x%p", ipimap);
> >>
> >> @@ -178,41 +178,34 @@ int jfs_mount(struct super_block *sb)
> >>          /* initialize fileset inode allocation map */
> >>          if ((rc = diMount(ipimap))) {
> >>                  jfs_err("jfs_mount: diMount failed w/rc = %d", rc);
> >> -               goto errout41;
> >> +               goto err_ipimap;
> >>          }
> >>
> >> -       goto out;
> >> +       return rc;
> >>
> >>          /*
> >>           *      unwind on error
> >>           */
> >> -      errout41:                /* close fileset inode allocation map inode */
> >> +err_ipimap:
> >> +       /* close fileset inode allocation map inode */
> >>          diFreeSpecial(ipimap);
> >> -
> >> -      errout40:                /* fileset closed */
> >> -
> >> +err_umount_ipaimap2:
> >>          /* close secondary aggregate inode allocation map */
> >> -       if (ipaimap2) {
> >> +       if (ipaimap2)
> >>                  diUnmount(ipaimap2, 1);
> >> +err_ipaimap2:
> >> +       /* close aggregate inodes */
> >> +       if (ipaimap2)
> >>                  diFreeSpecial(ipaimap2);
> >> -       }
> >> -
> >> -      errout35:
> >> -
> >> -       /* close aggregate block allocation map */
> >> +err_umount_ipbmap:     /* close aggregate block allocation map */
> >>          dbUnmount(ipbmap, 1);
> >> +err_ipbmap:            /* close aggregate inodes */
> >>          diFreeSpecial(ipbmap);
> >> -
> >> -      errout22:                /* close aggregate inode allocation map */
> >> -
> >> +err_umount_ipaimap:    /* close aggregate inode allocation map */
> >>          diUnmount(ipaimap, 1);
> >> -
> >> -      errout21:                /* close aggregate inodes */
> >> +err_ipaimap:           /* close aggregate inodes */
> >>          diFreeSpecial(ipaimap);
> >> -      errout20:                /* aggregate closed */
> >> -
> >> -      out:
> >> -
> >> +out:
> >>          if (rc)
> >>                  jfs_err("Mount JFS Failure: %d", rc);
> >>
> >> --
> >> 2.25.1
> >>


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
