Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id BD121A2CAE
	for <lists+jfs-discussion@lfdr.de>; Fri, 30 Aug 2019 04:13:52 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1i3WPy-0004QY-8Q; Fri, 30 Aug 2019 02:13:38 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <hubcap@omnibond.com>) id 1i3VxA-0002xg-JE
 for jfs-discussion@lists.sourceforge.net; Fri, 30 Aug 2019 01:43:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=+IuQC8pbIafmSwD8SbGVAzn/DZ0LTbah8BkBemk6zek=; b=UYraY2q02ojLtrSP4LGLk8rpDW
 tUrusgIE3ZvFYMMVHqZcjKAxO7jXA9bZHawtCxsbG0chn2Aa4EhY3TpTSHYu0XgwSZuohh8kjxFQ1
 Mqn5N+gbkCz6OW++yW4sbmAbltJV767diit2C/RXnwcMiOB3iRV/Q4kO4g/WAG5pqOks=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=+IuQC8pbIafmSwD8SbGVAzn/DZ0LTbah8BkBemk6zek=; b=j7qf2XzyiGK09vcNgWfQpSCEbn
 9NenoBwixsfLlPj0k2Q9799lPfX9B2+52XnhG8P3zqGblkx7RrZ+rGNq2QVf1SXdGOBwLgdej67SL
 aefkIy0y8nw3vbaamO6bqg2BlExvm6iUQ4fhZ6q1NFOaH/jUtEnPwhi1xu7g2iMdHiiA=;
Received: from mail-yw1-f67.google.com ([209.85.161.67])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.90_1)
 id 1i3Vx9-008fQI-5l
 for jfs-discussion@lists.sourceforge.net; Fri, 30 Aug 2019 01:43:52 +0000
Received: by mail-yw1-f67.google.com with SMTP id n205so1844349ywb.10
 for <jfs-discussion@lists.sourceforge.net>;
 Thu, 29 Aug 2019 18:43:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=omnibond-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=+IuQC8pbIafmSwD8SbGVAzn/DZ0LTbah8BkBemk6zek=;
 b=FGYyo76P5II4TE0xyyEdll3m2ufcqhN3TwhgI6WWOYj3toWhxeSi1wWMnzOp+D+rYj
 ahd/4sJOU/IaAo7fV5KpR4dy/NEnkI1UPi4BR9HH0itETNn+Hditb/hnVnP9oH/cyNg4
 oI/T5YJcX1gIvRAs4gjgcyFpS6Se90hdq2vCkSsM9WNmJBY7Ycu/Ay47jlkEZ0BEznLj
 bnxVQVgo6gmqDF8OmKQJnD/UyjSMDAyIfFY4B9AG7e1HO4urtYx5HaPIY5KSCwE1BSTn
 LymvSnfnU7tZBJ24uBJnsgaKmzRTtIBHnwqi8KIi0Il9SHJcQtsaNRWzW9wHZdDsxfKj
 tuYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=+IuQC8pbIafmSwD8SbGVAzn/DZ0LTbah8BkBemk6zek=;
 b=KW8Mwr3GM3Yzr+3ZbLuyRY9QM7g7uH5R+TWCwz71x4jT2DavcfPYeaMasYcCEvJZAV
 mbbDU41FMAujbxjMRZ/3xiykfkYo7L3jltbDtECGisLjAGL+3RqD8CYprU2pG8YfxZL2
 vndYb1MfbKRMK7U3n/3aYF2ZKFCo0nvnmjKr5/z5uKguuZn0JVxyRofeUmzKUQx7dPGr
 78qcMcIxFYDyZuLlXEcgxzJ9Qj2JM46azKu41DHEzUE1nLk4FtzOA1Du5r01MVZRyre7
 74BFZ9NpGFlj68q85hRE4iLO/6Bm2FOpqNiyiNJB7EsJvPA1jVQlPy4vI0Su/4hhstZM
 Nolg==
X-Gm-Message-State: APjAAAWr74M8+vCXEuyUs0m4RNcmTdtrKga9niFbw89p5MAEESCtNxlS
 2o7qwVaxqaBNgh+YKZ2USK8fwJ6W/sSvjc4Ajtqvdg==
X-Google-Smtp-Source: APXvYqxAu3ghLEx4a7gfcA71cO2rSrBRWU6Icj84myb4LlhRF0l0un6rKVRkx0QZ124nnLqeAoTJBmXR1ZEKYdU440U=
X-Received: by 2002:a81:3681:: with SMTP id d123mr9784376ywa.348.1567128029653; 
 Thu, 29 Aug 2019 18:20:29 -0700 (PDT)
MIME-Version: 1.0
References: <20190829041132.26677-1-deepa.kernel@gmail.com>
 <CABeXuvoKD83B7iUqE33Y9E2OVtf61DKv-swZr-N=ozz-cMmGOA@mail.gmail.com>
In-Reply-To: <CABeXuvoKD83B7iUqE33Y9E2OVtf61DKv-swZr-N=ozz-cMmGOA@mail.gmail.com>
From: Mike Marshall <hubcap@omnibond.com>
Date: Thu, 29 Aug 2019 21:20:18 -0400
Message-ID: <CAOg9mSR25eAH7e1KhDZt_uscJSzyuSmELbCxgyh=-KWRxjZtcw@mail.gmail.com>
To: Deepa Dinamani <deepa.kernel@gmail.com>
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.161.67 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.161.67 listed in wl.mailspike.net]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1i3Vx9-008fQI-5l
X-Mailman-Approved-At: Fri, 30 Aug 2019 02:13:37 +0000
Subject: Re: [Jfs-discussion] [GIT PULL] vfs: Add support for timestamp
 limits
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
Cc: Latchesar Ionkov <lucho@ionkov.net>,
 Martin Brandenburg <martin@omnibond.com>, jfs-discussion@lists.sourceforge.net,
 Dave Kleikamp <shaggy@kernel.org>, al@alarsen.net, yuchao0@huawei.com,
 Bob Copeland <me@bobcopeland.com>, Adrian Hunter <adrian.hunter@intel.com>,
 Andreas Dilger <adilger.kernel@dilger.ca>, mikulas@artax.karlin.mff.cuni.cz,
 stoph Hellwig <hch@lst.de>, nico@fluxnic.net, linux-cifs@vger.kernel.org, "Yan,
 Zheng" <zyan@redhat.com>, Sage Weil <sage@redhat.com>,
 "Darrick J. Wong" <darrick.wong@oracle.com>,
 y2038 Mailman List <y2038@lists.linaro.org>,
 Richard Weinberger <richard@nod.at>, Steve French <sfrench@samba.org>,
 Anton Vorontsov <anton@enomsg.org>, linux@armlinux.org.uk,
 codalist@coda.cs.cmu.edu, Christoph Hellwig <hch@infradead.org>,
 coda@cs.cmu.edu, V9FS Developers <v9fs-developer@lists.sourceforge.net>,
 Ilya Dryomov <idryomov@gmail.com>,
 Ext4 Developers List <linux-ext4@vger.kernel.org>, salah.triki@gmail.com,
 asmadeus@codewreck.org, devel@lists.orangefs.org,
 Evgeniy Dushistov <dushistov@mail.ru>, Kees Cook <keescook@chromium.org>,
 Arnd Bergmann <arnd@arndb.de>, Eric Van Hensbergen <ericvh@gmail.com>,
 Jan Kara <jack@suse.com>, reiserfs-devel@vger.kernel.org,
 Tejun Heo <tj@kernel.org>, Alexander Viro <viro@zeniv.linux.org.uk>,
 aivazian.tigran@gmail.com, phillip@squashfs.org.uk,
 David Sterba <dsterba@suse.com>, Jaegeuk Kim <jaegeuk@kernel.org>,
 ceph-devel <ceph-devel@vger.kernel.org>, trond.myklebust@hammerspace.com,
 OGAWA Hirofumi <hirofumi@mail.parknet.co.jp>,
 Andreas Dilger <adilger@dilger.ca>, Jan Harkes <jaharkes@cs.cmu.edu>,
 Linux NFS Mailing List <linux-nfs@vger.kernel.org>,
 Tony Luck <tony.luck@intel.com>, Theodore Ts'o <tytso@mit.edu>,
 luisbg@kernel.org, Artem Bityutskiy <dedekind1@gmail.com>,
 linux-ntfs-dev@lists.sourceforge.net, Greg KH <gregkh@linuxfoundation.org>,
 linux-karma-devel@lists.sourceforge.net, jlayton@kernel.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, "Linux F2FS DEV,
 Mailing List" <linux-f2fs-devel@lists.sourceforge.net>,
 linux-xfs@vger.kernel.org, Colin Cross <ccross@android.com>,
 Linux FS-devel Mailing List <linux-fsdevel@vger.kernel.org>,
 linux-mtd <linux-mtd@lists.infradead.org>,
 David Woodhouse <dwmw2@infradead.org>,
 Anna Schumaker <anna.schumaker@netapp.com>, Joel Becker <jlbec@evilplan.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

Hi Deepa...

I installed this patch series on top of Linux 5.3-rc6 and ran xfstests
on orangefs and got a regression... generic/258 failed
with: "Timestamp wrapped"...

# cat results/generic/258.out.bad
QA output created by 258
Creating file with timestamp of Jan 1, 1960
Testing for negative seconds since epoch
Timestamp wrapped: 0
Timestamp wrapped
(see /home/hubcap/xfstests-dev/results//generic/258.full for details)

Just to double check, I compiled Linux 5.3-rc6 without the timestamp series,
and 258 passed... then added the patch series back and the failure returned...

Also.... when I was using "git am" to apply the patch series, the ceph patch
failed, so I "git skipped" it...

I obtained the patch series from: https://github.com/deepa-hub/vfs limits
today.

-Mike

On Thu, Aug 29, 2019 at 12:38 AM Deepa Dinamani <deepa.kernel@gmail.com> wrote:
>
> Adding the others who were on original cc, just in case.
> - Deepa
>
> On Wed, Aug 28, 2019 at 9:12 PM Deepa Dinamani <deepa.kernel@gmail.com> wrote:
> >
> > Hi Al, Arnd,
> >
> > This is a pull request for filling in min and max timestamps for filesystems.
> > I've added all the acks, and dropped the adfs patch. That will be merged through
> > Russell's tree.
> >
> > Thanks,
> > Deepa
> >
> > The following changes since commit 5d18cb62218608a1388858880ad3ec76d6cb0d3b:
> >
> >   Add linux-next specific files for 20190828 (2019-08-28 19:59:14 +1000)
> >
> > are available in the Git repository at:
> >
> >   https://github.com/deepa-hub/vfs limits
> >
> > for you to fetch changes up to f0f216afa4c7e4dee9121fde52ccf57f76119188:
> >
> >   isofs: Initialize filesystem timestamp ranges (2019-08-28 19:19:36 -0700)
> >
> > ----------------------------------------------------------------
> > Deepa Dinamani (19):
> >       vfs: Add file timestamp range support
> >       vfs: Add timestamp_truncate() api
> >       timestamp_truncate: Replace users of timespec64_trunc
> >       mount: Add mount warning for impending timestamp expiry
> >       utimes: Clamp the timestamps before update
> >       fs: Fill in max and min timestamps in superblock
> >       9p: Fill min and max timestamps in sb
> >       ext4: Initialize timestamps limits
> >       fs: nfs: Initialize filesystem timestamp ranges
> >       fs: cifs: Initialize filesystem timestamp ranges
> >       fs: fat: Initialize filesystem timestamp ranges
> >       fs: affs: Initialize filesystem timestamp ranges
> >       fs: sysv: Initialize filesystem timestamp ranges
> >       fs: ceph: Initialize filesystem timestamp ranges
> >       fs: orangefs: Initialize filesystem timestamp ranges
> >       fs: hpfs: Initialize filesystem timestamp ranges
> >       fs: omfs: Initialize filesystem timestamp ranges
> >       pstore: fs superblock limits
> >       isofs: Initialize filesystem timestamp ranges
> >
> >  fs/9p/vfs_super.c        |  6 +++++-
> >  fs/affs/amigaffs.c       |  2 +-
> >  fs/affs/amigaffs.h       |  3 +++
> >  fs/affs/inode.c          |  4 ++--
> >  fs/affs/super.c          |  4 ++++
> >  fs/attr.c                | 21 ++++++++++++---------
> >  fs/befs/linuxvfs.c       |  2 ++
> >  fs/bfs/inode.c           |  2 ++
> >  fs/ceph/super.c          |  2 ++
> >  fs/cifs/cifsfs.c         | 22 ++++++++++++++++++++++
> >  fs/cifs/netmisc.c        | 14 +++++++-------
> >  fs/coda/inode.c          |  3 +++
> >  fs/configfs/inode.c      | 12 ++++++------
> >  fs/cramfs/inode.c        |  2 ++
> >  fs/efs/super.c           |  2 ++
> >  fs/ext2/super.c          |  2 ++
> >  fs/ext4/ext4.h           | 10 +++++++++-
> >  fs/ext4/super.c          | 17 +++++++++++++++--
> >  fs/f2fs/file.c           | 21 ++++++++++++---------
> >  fs/fat/inode.c           | 12 ++++++++++++
> >  fs/freevxfs/vxfs_super.c |  2 ++
> >  fs/hpfs/hpfs_fn.h        |  6 ++----
> >  fs/hpfs/super.c          |  2 ++
> >  fs/inode.c               | 33 ++++++++++++++++++++++++++++++++-
> >  fs/isofs/inode.c         |  7 +++++++
> >  fs/jffs2/fs.c            |  3 +++
> >  fs/jfs/super.c           |  2 ++
> >  fs/kernfs/inode.c        |  7 +++----
> >  fs/minix/inode.c         |  2 ++
> >  fs/namespace.c           | 33 ++++++++++++++++++++++++++++++++-
> >  fs/nfs/super.c           | 20 +++++++++++++++++++-
> >  fs/ntfs/inode.c          | 21 ++++++++++++---------
> >  fs/omfs/inode.c          |  4 ++++
> >  fs/orangefs/super.c      |  2 ++
> >  fs/pstore/ram.c          |  2 ++
> >  fs/qnx4/inode.c          |  2 ++
> >  fs/qnx6/inode.c          |  2 ++
> >  fs/reiserfs/super.c      |  3 +++
> >  fs/romfs/super.c         |  2 ++
> >  fs/squashfs/super.c      |  2 ++
> >  fs/super.c               |  2 ++
> >  fs/sysv/super.c          |  5 ++++-
> >  fs/ubifs/file.c          | 21 ++++++++++++---------
> >  fs/ufs/super.c           |  7 +++++++
> >  fs/utimes.c              |  6 ++----
> >  fs/xfs/xfs_super.c       |  2 ++
> >  include/linux/fs.h       |  5 +++++
> >  include/linux/time64.h   |  2 ++
> >  48 files changed, 298 insertions(+), 72 deletions(-)


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
