Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C489A750AAA
	for <lists+jfs-discussion@lfdr.de>; Wed, 12 Jul 2023 16:18:15 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1qJaf7-0001sg-A0;
	Wed, 12 Jul 2023 14:17:48 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <haris.iqbal@ionos.com>) id 1qJa41-0004Lq-TG
 for jfs-discussion@lists.sourceforge.net;
 Wed, 12 Jul 2023 13:39:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=+evqX27DGBiWJkyZnqGeEHQI9QcDiX7JHwbrqFd6EpQ=; b=ljU6EmgwBEOB1k1K2OgnDJUvB4
 +Tg3nD983RDlqXgK+a7bOH9WsxNokyZllcZIZIEEvUkRvlrCgKocATHqXy2zAKnBqJwmpWZBGGNqi
 ak4/aRJfTu8osFlexGpxEFWdAdT18NhGbhYNaJpBFnw01Ow5OF98ufJkhxOiRxCmlSBs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=+evqX27DGBiWJkyZnqGeEHQI9QcDiX7JHwbrqFd6EpQ=; b=nFM2yZ0eM2YldKH2rgJbIyQL4M
 2uUtTj3yW8ilkxuslNcp9OKr1LMFISFbvuJ3EjkwLjWCQ7W6zvm31tym6lT+hjYK+U/WUx4ZOkpQl
 ushjiSg6hqA3Z6SWzJZX8jP/xJjRP3BHLRqhF0ghdAKh5xXiiNG8psf4nL1geDh+/wfU=;
Received: from mail-lf1-f49.google.com ([209.85.167.49])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1qJa41-00024V-Qy for jfs-discussion@lists.sourceforge.net;
 Wed, 12 Jul 2023 13:39:29 +0000
Received: by mail-lf1-f49.google.com with SMTP id
 2adb3069b0e04-4fafe87c6fbso11257455e87.3
 for <jfs-discussion@lists.sourceforge.net>;
 Wed, 12 Jul 2023 06:39:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ionos.com; s=google; t=1689169161; x=1691761161;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=+evqX27DGBiWJkyZnqGeEHQI9QcDiX7JHwbrqFd6EpQ=;
 b=HvU/baPM6sZwTLnq/qfa5rJyKcj7shqfM6D7Yb+G9g3ZYKTi3s0EcBiC7f7tIEjtdm
 QA5axW7VPwPnkXZzytIsv3row1wqxHmeDpHZnctYAtNdrbiFmseznOuEbaqL8+1ZuCdx
 mHq0tH1oyBhuyYi3VnGKgi7s+kfN3fJslBaL8GJuknQcFsq3zqBycULjxCNTh0AQw7xm
 1wOmoQ5WDMp1n00gvCTlg6QVLQFj2LlfqH5fv/sX4+XD5tLQqI3TVk0j8HJlphtzaXvc
 STEw6QCxnVvzKbvtX6kVCmEnTLJyBGmZAtS0H4Rhh3ZkO7nx2ZhYYIcL3MQBWzCiQS8O
 xksA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1689169161; x=1691761161;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=+evqX27DGBiWJkyZnqGeEHQI9QcDiX7JHwbrqFd6EpQ=;
 b=i2pauY+R8knBayyBYxOIEtk87jjZHKqr0rbeM1o5hkN1zBCazIxPxLJHFfTFrZs3Oa
 sK6bfxNQE2geJHZZz1tF5P2ha+0loVjXQyD2gQO+oPTNonolDzGJl9BL67V7PBWT5rik
 yxBQKlujWEOD97TLxbf0fTlwdZFCR8l0mSR23f3EkR0l/t+FcrOL0KjuZXyq31EQik8y
 uCnvc/EFtooVZDckH7n2+CFsbD9FqFqbGORbEwKkmslLq25pjDKOGgZ0K0Z0IZAwzsA6
 BXNExIc8voSYCwzep5cNETnAFgNcRxNxubpdkT+a2in14p7Yo0oxFnhEGc84Wu27zxZQ
 4iCA==
X-Gm-Message-State: ABy/qLZAst4O/j0PpZ+BEke4+bbgz4MqbXMeaM7ZId+jZGm3wC34ubQC
 qg3KHHW+fy9TqCkfPCE3gmUEqMmSr169Uhw0sFSxmA==
X-Google-Smtp-Source: APBJJlEI1gyVFA9e0vzN1OZw8HqZ9LgUDYjdSVkcc/YNKBWyCbO3ruOl1C16YRvIxaIjAxVOOIhj+dxwF3VF9wwHpIo=
X-Received: by 2002:a05:6512:34cd:b0:4fb:82ac:9d23 with SMTP id
 w13-20020a05651234cd00b004fb82ac9d23mr13814794lfr.36.1689169161029; Wed, 12
 Jul 2023 06:39:21 -0700 (PDT)
MIME-Version: 1.0
References: <20230629165206.383-1-jack@suse.cz>
 <20230704122224.16257-1-jack@suse.cz>
 <ZKbgAG5OoHVyUKOG@infradead.org>
In-Reply-To: <ZKbgAG5OoHVyUKOG@infradead.org>
Date: Wed, 12 Jul 2023 15:39:09 +0200
Message-ID: <CAJpMwyhKW23zEfMcsGrBG6Bq0Md40vZ4qj-PgDkR6KWPv8+7PQ@mail.gmail.com>
To: Christoph Hellwig <hch@infradead.org>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software, running on the system "util-spamd-2.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Thu, Jul 6, 2023 at 5:38 PM Christoph Hellwig <hch@infradead.org>
    wrote: > On Tue, Jul 04, 2023 at 02:21:28PM +0200, Jan Kara wrote: > > Create
    struct bdev_handle that contains all parameters that need to be > > passed
    to blkdev_put() and provide blkdev_get_handle_* functi [...] 
 
 Content analysis details:   (-0.2 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
                             [209.85.167.49 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
                              no trust
                             [209.85.167.49 listed in list.dnswl.org]
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1qJa41-00024V-Qy
X-Mailman-Approved-At: Wed, 12 Jul 2023 14:17:39 +0000
Subject: Re: [Jfs-discussion] [PATCH 01/32] block: Provide
 blkdev_get_handle_* functions
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
From: Haris Iqbal via Jfs-discussion <jfs-discussion@lists.sourceforge.net>
Reply-To: Haris Iqbal <haris.iqbal@ionos.com>
Cc: Dave Kleikamp <shaggy@kernel.org>, jfs-discussion@lists.sourceforge.net,
 Jan Kara <jack@suse.cz>, "Darrick J. Wong" <djwong@kernel.org>,
 linux-nvme@lists.infradead.org, Joseph Qi <joseph.qi@linux.alibaba.com>,
 dm-devel@redhat.com, target-devel@vger.kernel.org,
 linux-mtd@lists.infradead.org, Jack Wang <jinpu.wang@ionos.com>,
 Alasdair Kergon <agk@redhat.com>, drbd-dev@lists.linbit.com,
 linux-s390@vger.kernel.org, linux-nilfs@vger.kernel.org,
 linux-scsi@vger.kernel.org, Sergey Senozhatsky <senozhatsky@chromium.org>,
 xen-devel@lists.xenproject.org, Gao Xiang <xiang@kernel.org>,
 Christian Borntraeger <borntraeger@linux.ibm.com>,
 Kent Overstreet <kent.overstreet@gmail.com>,
 Sven Schnelle <svens@linux.ibm.com>, linux-pm@vger.kernel.org,
 Mike Snitzer <snitzer@kernel.org>, Chao Yu <chao@kernel.org>,
 Joern Engel <joern@lazybastard.org>, reiserfs-devel@vger.kernel.org,
 linux-block@vger.kernel.org, linux-bcache@vger.kernel.org,
 David Sterba <dsterba@suse.com>, Jaegeuk Kim <jaegeuk@kernel.org>,
 Trond Myklebust <trond.myklebust@hammerspace.com>,
 Jens Axboe <axboe@kernel.dk>, linux-raid@vger.kernel.org,
 linux-nfs@vger.kernel.org, linux-ext4@vger.kernel.org, Ted Tso <tytso@mit.edu>,
 linux-mm@kvack.org, Song Liu <song@kernel.org>,
 linux-f2fs-devel@lists.sourceforge.net, linux-xfs@vger.kernel.org,
 Minchan Kim <minchan@kernel.org>, ocfs2-devel@oss.oracle.com,
 Anna Schumaker <anna@kernel.org>, linux-fsdevel@vger.kernel.org,
 Andrew Morton <akpm@linux-foundation.org>, linux-erofs@lists.ozlabs.org,
 linux-btrfs@vger.kernel.org
Content-Type: multipart/mixed; boundary="===============3928663645376117848=="
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

--===============3928663645376117848==
Content-Type: multipart/alternative; boundary="000000000000cf1dc906004a5728"

--000000000000cf1dc906004a5728
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Jul 6, 2023 at 5:38=E2=80=AFPM Christoph Hellwig <hch@infradead.org=
> wrote:

> On Tue, Jul 04, 2023 at 02:21:28PM +0200, Jan Kara wrote:
> > Create struct bdev_handle that contains all parameters that need to be
> > passed to blkdev_put() and provide blkdev_get_handle_* functions that
> > return this structure instead of plain bdev pointer. This will
> > eventually allow us to pass one more argument to blkdev_put() without
> > too much hassle.
>
> Can we use the opportunity to come up with better names?  blkdev_get_*
> was always a rather horrible naming convention for something that
> ends up calling into ->open.
>
> What about:
>
> struct bdev_handle *bdev_open_by_dev(dev_t dev, blk_mode_t mode, void
> *holder,
>                 const struct blk_holder_ops *hops);
> struct bdev_handle *bdev_open_by_path(dev_t dev, blk_mode_t mode,
>                 void *holder, const struct blk_holder_ops *hops);
> void bdev_release(struct bdev_handle *handle);
>

+1 to this.
Also, if we are removing "handle" from the function, should the name of the
structure it returns also change? Would something like bdev_ctx be better?


>
> ?
>

--000000000000cf1dc906004a5728
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr" class=3D"gmail_attr">On Thu, Jul 6, 2023 at 5:38=E2=80=AFP=
M Christoph Hellwig &lt;<a href=3D"mailto:hch@infradead.org">hch@infradead.=
org</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"marg=
in:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1e=
x">On Tue, Jul 04, 2023 at 02:21:28PM +0200, Jan Kara wrote:<br>
&gt; Create struct bdev_handle that contains all parameters that need to be=
<br>
&gt; passed to blkdev_put() and provide blkdev_get_handle_* functions that<=
br>
&gt; return this structure instead of plain bdev pointer. This will<br>
&gt; eventually allow us to pass one more argument to blkdev_put() without<=
br>
&gt; too much hassle.<br>
<br>
Can we use the opportunity to come up with better names?=C2=A0 blkdev_get_*=
<br>
was always a rather horrible naming convention for something that<br>
ends up calling into -&gt;open.<br>
<br>
What about:<br>
<br>
struct bdev_handle *bdev_open_by_dev(dev_t dev, blk_mode_t mode, void *hold=
er,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 const struct blk_ho=
lder_ops *hops);<br>
struct bdev_handle *bdev_open_by_path(dev_t dev, blk_mode_t mode,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 void *holder, const=
 struct blk_holder_ops *hops);<br>
void bdev_release(struct bdev_handle *handle);<br></blockquote><div><br></d=
iv><div>+1 to this.</div><div>Also, if we are removing &quot;handle&quot; f=
rom the function, should the name of the structure it returns also change? =
Would something like bdev_ctx be better?<br></div><div>=C2=A0</div><blockqu=
ote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px=
 solid rgb(204,204,204);padding-left:1ex">
<br>
?<br>
</blockquote></div></div>

--000000000000cf1dc906004a5728--


--===============3928663645376117848==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============3928663645376117848==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion

--===============3928663645376117848==--

