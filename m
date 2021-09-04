Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id BD08940094D
	for <lists+jfs-discussion@lfdr.de>; Sat,  4 Sep 2021 04:27:20 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1mMLOX-0007cB-RH; Sat, 04 Sep 2021 02:27:01 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <mudongliangabcd@gmail.com>) id 1mMLOV-0007c5-PW
 for jfs-discussion@lists.sourceforge.net; Sat, 04 Sep 2021 02:26:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=JeKEljdOKKIb0F4prVa6PwXBW4S9Qd2Aq67n9H76mXg=; b=bHhSNpkMM0oDeKDga1nO3TET8Z
 ktMeFOg9rEWhX+Thqjtkr0r8ht7Y/YtHOUBmiDKtjg8w+Q1/FmkPIu0ZE80vRlid9WcNxDlE8rxmT
 t0j+X1xqwlPuvHJhrkZ9p0ZQ7LcxlkYfI9y+ByZ6uibwRCVwEinPI7cpPzLc8MZWKqXM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=JeKEljdOKKIb0F4prVa6PwXBW4S9Qd2Aq67n9H76mXg=; b=Z3g4AvTeWm1b9knMdR1lW/hfGG
 llrtXu2eSOkcoFsdyGFQDYCRoUKZ44qGzzNjYiK6KXcj6je1YH3R8OSJnF0TMb8c/MybarqvTR9kq
 IvGQbS9r59jWBSx9uPfXzfidenQPWRyRjTWItBKMV5iWf3DMe9wT2HIbEa1zUiSUxBkI=;
Received: from mail-ej1-f44.google.com ([209.85.218.44])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1mMLOU-0005p6-9d
 for jfs-discussion@lists.sourceforge.net; Sat, 04 Sep 2021 02:26:59 +0000
Received: by mail-ej1-f44.google.com with SMTP id n27so1639343eja.5
 for <jfs-discussion@lists.sourceforge.net>;
 Fri, 03 Sep 2021 19:26:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=JeKEljdOKKIb0F4prVa6PwXBW4S9Qd2Aq67n9H76mXg=;
 b=e99RlrgvIirzTxeRgaSjtT8FR/bQd4M9OxtBgP+Z1pDYwQrRJjldv/ht9il4CXfCVy
 yMLApQZj1QHubSXqK+8kabdVjV4EGYRFNyup/8F/dd6M2p5K4JAAnyPlQrPfuo4QiiNm
 9FOR5CQeWQhF2qEncnrlNUd8B/Qg74qh6qnVtOLsG4xZ+oEX+CM45TabzIA5qIz5e4sR
 gek9TGQJoLCM2rMdbPNcH+xq37vEx+85gWuBqM8xfX/ByzGHJcMLz9ZG2zDdKHMSqLXn
 1k3H4cdR04UeDp1JVbk3bShQlhw1GfZzWGCLwaraeOvFDbXmRAInDuf3ljk9qC8c8q0y
 QpbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=JeKEljdOKKIb0F4prVa6PwXBW4S9Qd2Aq67n9H76mXg=;
 b=REL8e7+y4KChk9+v3LFqXUMcbWtGWY2bI5UctfPBTR0bzp4tuu1E72QjodJsSTCvG5
 BbSgf3lHBVKoN+oN2LewwBGwwXwgz4ORoCP5NjFnzSAhSzO9jDE7APDHTUObXFccyTkF
 im0d0eCq/algJ5l4nfPdi/ByTwYn3+LDHvnDP+GxtkHqLnHZnAjKX/V6F7/+DssWJPXh
 p4DdjWlB+J4ZYkTihIRy/ELZ3xD74LOhC1Z1MNyDQ3F3F/dtgbI5uc8wRvyZstILyxLw
 qqnvwO9R+nVsPaLdaoj2XBnUF3cs7Dw0FCXdRGYQcKQzcogSWM8Dtz8piahki7USysc6
 eexw==
X-Gm-Message-State: AOAM530MMEhuCeCMnszZu35fN7SK+3o3+QquNgPDuLhREd3tnFzvwNHc
 u9nFRSvaL1dNUwJ+Zx2lK2MK2Eluc5VassXTWwI=
X-Google-Smtp-Source: ABdhPJyPf9MvkOrKIhPBBVvgU9WX98eFhjU8DYrMUBFQ6BdqO0o2taeATbqBy5USGO0xl31azZ3fJ9VTtTWiEWWb/kc=
X-Received: by 2002:a17:906:640f:: with SMTP id
 d15mr2085736ejm.419.1630722411886; 
 Fri, 03 Sep 2021 19:26:51 -0700 (PDT)
MIME-Version: 1.0
References: <20210818102612.864127-1-mudongliangabcd@gmail.com>
 <fc1dae76-eac1-e6f4-2ba6-f49e15ad0b46@oracle.com>
In-Reply-To: <fc1dae76-eac1-e6f4-2ba6-f49e15ad0b46@oracle.com>
From: Dongliang Mu <mudongliangabcd@gmail.com>
Date: Sat, 4 Sep 2021 10:26:25 +0800
Message-ID: <CAD-N9QWihGFBf8WgwynNe295TC5rdyaO3kXgW+-MvqF4O5xvKg@mail.gmail.com>
To: Dave Kleikamp <dave.kleikamp@oracle.com>
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.218.44 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (mudongliangabcd[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.218.44 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1mMLOU-0005p6-9d
Subject: Re: [Jfs-discussion] [PATCH] JFS: fix memleak in jfs_mount
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

On Sat, Sep 4, 2021 at 5:51 AM Dave Kleikamp <dave.kleikamp@oracle.com> wrote:
>
> Thanks for waiting. I have just a couple comments, but this looks good.
> I appreciate the clean up.
>
> On 8/18/21 5:25 AM, Dongliang Mu wrote:
> > In jfs_mount, when diMount(ipaimap2) fails, it goes to errout35. However,
> > the following code does not free ipaimap2 allocated by diReadSpecial.
> >
> > Fix this by refactoring the error handling code of jfs_mount. To be
> > specific, modify the lable name and free ipaimap2 when the above error
> > ocurrs.
> >
> > Fixes: 1da177e4c3f4 ("Linux-2.6.12-rc2")
> > Signed-off-by: Dongliang Mu <mudongliangabcd@gmail.com>
> > ---
> >   fs/jfs/jfs_mount.c | 53 +++++++++++++++++++---------------------------
> >   1 file changed, 22 insertions(+), 31 deletions(-)
> >
> > diff --git a/fs/jfs/jfs_mount.c b/fs/jfs/jfs_mount.c
> > index 5d7d7170c03c..638a4ecc4069 100644
> > --- a/fs/jfs/jfs_mount.c
> > +++ b/fs/jfs/jfs_mount.c
> > @@ -81,14 +81,14 @@ int jfs_mount(struct super_block *sb)
> >        * (initialize mount inode from the superblock)
> >        */
> >       if ((rc = chkSuper(sb))) {
> > -             goto errout20;
> > +             return rc;
>
> This may have been intentional, but it isn't mentioned in the patch header.
>
> If chkSuper fails, we will no longer call
>         jfs_err("Mount JFS Failure: %d", rc);
>
> I don't necessarily see this as a bad thing. In many cases, chkSuper
> prints a more helpful message. In the case where it silently fails, it's
> not even recognizing the superblock as a supported version of JFS and
> this message isn't particularly helpful. In fact this jfs_err()
> statement might be best deleted in its entirety.

I see. Let me change "return rc" to "goto out", the same as "goto errout20".

This will put back the jfs_err message output.

>
> >       }
> >
> >       ipaimap = diReadSpecial(sb, AGGREGATE_I, 0);
> >       if (ipaimap == NULL) {
> >               jfs_err("jfs_mount: Failed to read AGGREGATE_I");
> >               rc = -EIO;
> > -             goto errout20;
> > +             goto out;
> >       }
> >       sbi->ipaimap = ipaimap;
> >
> > @@ -99,7 +99,7 @@ int jfs_mount(struct super_block *sb)
> >        */
> >       if ((rc = diMount(ipaimap))) {
> >               jfs_err("jfs_mount: diMount(ipaimap) failed w/rc = %d", rc);
> > -             goto errout21;
> > +             goto err_ipaimap;
> >       }
> >
> >       /*
> > @@ -108,7 +108,7 @@ int jfs_mount(struct super_block *sb)
> >       ipbmap = diReadSpecial(sb, BMAP_I, 0);
> >       if (ipbmap == NULL) {
> >               rc = -EIO;
> > -             goto errout22;
> > +             goto err_umount_ipaimap;
> >       }
> >
> >       jfs_info("jfs_mount: ipbmap:0x%p", ipbmap);
> > @@ -120,7 +120,7 @@ int jfs_mount(struct super_block *sb)
> >        */
> >       if ((rc = dbMount(ipbmap))) {
> >               jfs_err("jfs_mount: dbMount failed w/rc = %d", rc);
> > -             goto errout22;
> > +             goto err_ipbmap;
> >       }
> >
> >       /*
> > @@ -139,7 +139,7 @@ int jfs_mount(struct super_block *sb)
> >               if (!ipaimap2) {
> >                       jfs_err("jfs_mount: Failed to read AGGREGATE_I");
> >                       rc = -EIO;
> > -                     goto errout35;
> > +                     goto err_umount_ipbmap;
> >               }
> >               sbi->ipaimap2 = ipaimap2;
> >
> > @@ -151,7 +151,7 @@ int jfs_mount(struct super_block *sb)
> >               if ((rc = diMount(ipaimap2))) {
> >                       jfs_err("jfs_mount: diMount(ipaimap2) failed, rc = %d",
> >                               rc);
> > -                     goto errout35;
> > +                     goto err_ipaimap2;
> >               }
> >       } else
> >               /* Secondary aggregate inode table is not valid */
> > @@ -168,7 +168,7 @@ int jfs_mount(struct super_block *sb)
> >               jfs_err("jfs_mount: Failed to read FILESYSTEM_I");
> >               /* open fileset secondary inode allocation map */
> >               rc = -EIO;
> > -             goto errout40;
> > +             goto err_umount_ipaimap2;
> >       }
> >       jfs_info("jfs_mount: ipimap:0x%p", ipimap);
> >
> > @@ -178,41 +178,32 @@ int jfs_mount(struct super_block *sb)
> >       /* initialize fileset inode allocation map */
> >       if ((rc = diMount(ipimap))) {
> >               jfs_err("jfs_mount: diMount failed w/rc = %d", rc);
> > -             goto errout41;
> > +             goto err_ipimap;
> >       }
> >
> > -     goto out;
> > +     return rc;
> >
> >       /*
> >        *      unwind on error
> >        */
> > -      errout41:              /* close fileset inode allocation map inode */
> > +err_ipimap:
> > +     /* close fileset inode allocation map inode */
> >       diFreeSpecial(ipimap);
> > -
> > -      errout40:              /* fileset closed */
> > -
> > +err_umount_ipaimap2:
> >       /* close secondary aggregate inode allocation map */
> > -     if (ipaimap2) {
> > -             diUnmount(ipaimap2, 1);
> > -             diFreeSpecial(ipaimap2);
> > -     }
> > -
> > -      errout35:
> > -
> > -     /* close aggregate block allocation map */
> > +     if (ipaimap2) diUnmount(ipaimap2, 1);
>
> Coding style: this should be split between two lines:
>         if (ipaimap2)
>                 diUnmount(ipaimap2, 1);
>
> > +err_ipaimap2:
> > +     /* close aggregate inodes */
> > +     if (ipaimap2) diFreeSpecial(ipaimap2);
>
> Same here.

Will modify it in the v2 version.

>
> > +err_umount_ipbmap:   /* close aggregate block allocation map */
> >       dbUnmount(ipbmap, 1);
> > +err_ipbmap:          /* close aggregate inodes */
> >       diFreeSpecial(ipbmap);
> > -
> > -      errout22:              /* close aggregate inode allocation map */
> > -
> > +err_umount_ipaimap:  /* close aggregate inode allocation map */
> >       diUnmount(ipaimap, 1);
> > -
> > -      errout21:              /* close aggregate inodes */
> > +err_ipaimap:         /* close aggregate inodes */
> >       diFreeSpecial(ipaimap);
> > -      errout20:              /* aggregate closed */
> > -
> > -      out:
> > -
> > +out:
> >       if (rc)
> >               jfs_err("Mount JFS Failure: %d", rc);
> >
> >


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
