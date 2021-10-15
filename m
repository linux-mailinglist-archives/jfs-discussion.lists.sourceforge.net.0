Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D71C742F4BC
	for <lists+jfs-discussion@lfdr.de>; Fri, 15 Oct 2021 16:05:38 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1mbNpc-000864-T8; Fri, 15 Oct 2021 14:05:08 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <konishi.ryusuke@gmail.com>)
 id 1mbNff-0002CC-Iv; Fri, 15 Oct 2021 13:54:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ffV9EXIvpsxi/zzat9M/mXqT6D2BowDOkY1JbwoxMOs=; b=NkCFZxR3kwyxWH8RyNdVBGdzZq
 fVrlJPIWXrIDhK95JIyjgKdxfesdFvrgCJ7YXEqPjGzdsNKHcLNTzaWthSbHG49q2I+B27TencNGT
 V0V9pmWLbnlFiRBOOQN+FUtfq0aJhc0Kcg53agZvzaKdNIj36rLEQrsIej8X3oCq6i4w=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=ffV9EXIvpsxi/zzat9M/mXqT6D2BowDOkY1JbwoxMOs=; b=RP2NqAuWA9vO5W/4fp7WrAzLJH
 R7EzJgUusydhLIbLSRTVgEeBqVkQVVH5bjLwwtKrdAgBMOrtnlfoCK8kYBYw0fmeidyJiuEgaT1n3
 uadl/OJ5AHhS/V8VSo4NJ+OzM328+1t/ylxCHrrkpFXGPKuw3TscUq/bpIjnm0YjWLlI=;
Received: from mail-lf1-f49.google.com ([209.85.167.49])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1mbNff-0002aj-1c; Fri, 15 Oct 2021 13:54:51 +0000
Received: by mail-lf1-f49.google.com with SMTP id y26so42204964lfa.11;
 Fri, 15 Oct 2021 06:54:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ffV9EXIvpsxi/zzat9M/mXqT6D2BowDOkY1JbwoxMOs=;
 b=dywwSbIGuXR+dXQSROUIhljg5+mHDSiHww9Tc5QE/0KVc6D96c2ocK9S4czPbKsPtz
 ySNRWdT9ve7V2FStFVRj6GJtI3GsO5QLdZltms855+mPxWEcF0y64BVbP3jeqDvlTRSC
 Q0SLO0cmgDLKr6f+MZ/VrWRqoygoePpVOM+o8yB+jCv00rDqDRMVdNenYkm3jQj9uL4k
 E4/MHhOextdkY9W69AUB008H67vZy/HWT7fbCa67+7KfpngwPIaSC4I9QxVoGvAnEL8B
 uHW/dfm/FieH/pIjg0HJFLHL4EoFbkdCY9X4ZyWcCPHq1gpKkT+6jn/WXPUZSeEosezu
 YVGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ffV9EXIvpsxi/zzat9M/mXqT6D2BowDOkY1JbwoxMOs=;
 b=oJSh+/FtO6FutwdkBnejZvYb1VWvrvyA4HvxEp+VcbVWktURjffsl4EeqsSCIf1myI
 92qwdzRbFJM6Eeh53Lj6SdxFrEaZ9m2ML92HH56CliEnb/vATp4f96Hp2Z/8mEisEVXH
 NSoBUfvMrWnsVJ2qkc4G6TWUfon+0Gr6nZrUDzrBtMPWKoNj2t/XATsThVT53JgLX8RC
 vcLvl5zJtriQPwwwSg/4mResn50icvOqwlWIayEWmRPiJdO7FFdAvQxRCf7MhNWED7Ki
 c9oy8aiuUaHahDSo238KJG/jNX6UOAdbExagJ8MYtKY/19W2WxuJBUBgj1PvBgofvVUy
 0cTw==
X-Gm-Message-State: AOAM530w9ICbUUBKnWlTGZ4AZD5nuvhHtfitW1ddWCx2kRP8BGN6tse7
 dfr9mDFw0N49ldUrS0m7xqOumaHIMxbna59l1D8=
X-Google-Smtp-Source: ABdhPJzz49VguPSiC+Fo0EQ3C2KxuaRWGiHMMcfCON0rRU6wG0keaxKFCd23chpDIT1aQ64ecAbOb/mh29DzHZBz3N0=
X-Received: by 2002:a2e:a170:: with SMTP id u16mr12947954ljl.108.1634306084449; 
 Fri, 15 Oct 2021 06:54:44 -0700 (PDT)
MIME-Version: 1.0
References: <20211015132643.1621913-1-hch@lst.de>
 <20211015132643.1621913-20-hch@lst.de>
In-Reply-To: <20211015132643.1621913-20-hch@lst.de>
From: Ryusuke Konishi <konishi.ryusuke@gmail.com>
Date: Fri, 15 Oct 2021 22:54:32 +0900
Message-ID: <CAKFNMokH0ZU-zxMe3Wm87hZwVgXPv3nRYBx2gXU98GekaeDFRw@mail.gmail.com>
To: Christoph Hellwig <hch@lst.de>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Fri, Oct 15, 2021 at 10:27 PM Christoph Hellwig wrote:
 > > Use the proper helper to read the block device size. > > Signed-off-by:
 Christoph Hellwig Acked-by: Ryusuke Konishi Thanks, Ryusuke Konishi 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [konishi.ryusuke[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.49 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.49 listed in wl.mailspike.net]
X-Headers-End: 1mbNff-0002aj-1c
X-Mailman-Approved-At: Fri, 15 Oct 2021 14:04:58 +0000
Subject: Re: [Jfs-discussion] [PATCH 19/30] nilfs2: use bdev_nr_bytes
 instead of open coding it
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
Cc: Dave Kleikamp <shaggy@kernel.org>, jfs-discussion@lists.sourceforge.net,
 Mike Snitzer <snitzer@redhat.com>, linux-nvme@lists.infradead.org,
 Konstantin Komarov <almaz.alexandrovich@paragon-software.com>,
 Song Liu <song@kernel.org>, device-mapper development <dm-devel@redhat.com>,
 target-devel@vger.kernel.org, reiserfs-devel@vger.kernel.org,
 drbd-dev@lists.linbit.com, linux-nilfs <linux-nilfs@vger.kernel.org>,
 linux-scsi@vger.kernel.org, OGAWA Hirofumi <hirofumi@mail.parknet.co.jp>,
 linux-ext4@vger.kernel.org, Kees Cook <keescook@chromium.org>,
 Josef Bacik <josef@toxicpanda.com>, Coly Li <colyli@suse.de>,
 linux-raid@vger.kernel.org, linux-bcache@vger.kernel.org,
 David Sterba <dsterba@suse.com>, Anton Altaparmakov <anton@tuxera.com>,
 Jens Axboe <axboe@kernel.dk>, linux-block@vger.kernel.org,
 linux-nfs@vger.kernel.org, Theodore Ts'o <tytso@mit.edu>,
 linux-ntfs-dev@lists.sourceforge.net, Jan Kara <jack@suse.com>,
 linux-fsdevel@vger.kernel.org, Phillip Lougher <phillip@squashfs.org.uk>,
 ntfs3@lists.linux.dev, linux-btrfs@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

On Fri, Oct 15, 2021 at 10:27 PM Christoph Hellwig <hch@lst.de> wrote:
>
> Use the proper helper to read the block device size.
>
> Signed-off-by: Christoph Hellwig <hch@lst.de>

Acked-by: Ryusuke Konishi <konishi.ryusuke@gmail.com>

Thanks,
Ryusuke Konishi


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
