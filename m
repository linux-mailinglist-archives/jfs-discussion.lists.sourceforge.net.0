Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 646D242D9FE
	for <lists+jfs-discussion@lfdr.de>; Thu, 14 Oct 2021 15:14:59 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1mb0Z9-0002ze-R2; Thu, 14 Oct 2021 13:14:35 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <hch@lst.de>)
 id 1mauEa-0004lo-Jm; Thu, 14 Oct 2021 06:28:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=p00kZzsB2wbYSNebcxRpfdoWEJZwTR2iqIiLPvef07w=; b=aeGbjGWaFxX73hkCKxIcahda6+
 ZN0WG1UoYK6gpf/3sXhG9pI+O1DnfwxY5ru20FwUJ5R15FNoD2zFqwf5sA5StO9elzr4xpWdgJDIf
 y5afVQZ0knI41utwj78Q/Pn4g6s6PQ0FZQbnhjETNT4v9A8eFJmqWOV+buTMwb5TiHbg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=p00kZzsB2wbYSNebcxRpfdoWEJZwTR2iqIiLPvef07w=; b=BVJuC8Ns3lvH53dxt/cNAsZT6j
 aCYncTga5HW4ag7LBRT+frlRN6LPPHTJJNA6aAMl/0Su0a+3vFtLUyxH2trVdZdgFKHXQyxMtYiwV
 xqHgZR1W2YEP+B+LUSnxl5WzoiZ7gBF3ClmC8NVKkMHaFTRnDSID25fVSpDMLsUHbKjo=;
Received: from verein.lst.de ([213.95.11.211])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mauEZ-00AS78-9k; Thu, 14 Oct 2021 06:28:56 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id 5DA6768B05; Thu, 14 Oct 2021 08:28:44 +0200 (CEST)
Date: Thu, 14 Oct 2021 08:28:44 +0200
From: Christoph Hellwig <hch@lst.de>
To: Jens Axboe <axboe@kernel.dk>
Message-ID: <20211014062844.GA25448@lst.de>
References: <20211013051042.1065752-1-hch@lst.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211013051042.1065752-1-hch@lst.de>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Wed, Oct 13, 2021 at 07:10:13AM +0200, Christoph Hellwig
 wrote: > I wondered about adding a helper for looking at the size in byte
 units > to avoid the SECTOR_SHIFT shifts in various places. But gi [...] 
 Content analysis details:   (0.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
X-Headers-End: 1mauEZ-00AS78-9k
X-Mailman-Approved-At: Thu, 14 Oct 2021 13:14:34 +0000
Subject: Re: [Jfs-discussion] don't use ->bd_inode to access the block
 device size
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
 Song Liu <song@kernel.org>, dm-devel@redhat.com, target-devel@vger.kernel.org,
 linux-mtd@lists.infradead.org, reiserfs-devel@vger.kernel.org,
 drbd-dev@lists.linbit.com, linux-nilfs@vger.kernel.org,
 linux-scsi@vger.kernel.org, OGAWA Hirofumi <hirofumi@mail.parknet.co.jp>,
 linux-ext4@vger.kernel.org, Kees Cook <keescook@chromium.org>,
 Josef Bacik <josef@toxicpanda.com>, Coly Li <colyli@suse.de>,
 linux-raid@vger.kernel.org, linux-bcache@vger.kernel.org,
 David Sterba <dsterba@suse.com>, Ryusuke Konishi <konishi.ryusuke@gmail.com>,
 Anton Altaparmakov <anton@tuxera.com>, linux-block@vger.kernel.org,
 linux-nfs@vger.kernel.org, Theodore Ts'o <tytso@mit.edu>,
 linux-ntfs-dev@lists.sourceforge.net, Jan Kara <jack@suse.com>,
 linux-fsdevel@vger.kernel.org, Phillip Lougher <phillip@squashfs.org.uk>,
 ntfs3@lists.linux.dev, linux-btrfs@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

On Wed, Oct 13, 2021 at 07:10:13AM +0200, Christoph Hellwig wrote:
> I wondered about adding a helper for looking at the size in byte units
> to avoid the SECTOR_SHIFT shifts in various places.  But given that
> I could not come up with a good name and block devices fundamentally
> work in sector size granularity I decided against that.

So it seems like the biggest review feedback is that we should have
such a helper.  I think the bdev_size name is the worst as size does
not imply a particular unit.  bdev_nr_bytes is a little better but I'm
not too happy.  Any other suggestions or strong opinions?


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
