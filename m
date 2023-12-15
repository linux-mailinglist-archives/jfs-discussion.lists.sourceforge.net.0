Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id CFEEE814116
	for <lists+jfs-discussion@lfdr.de>; Fri, 15 Dec 2023 06:00:26 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1rE0Iw-00064k-5m;
	Fri, 15 Dec 2023 05:00:06 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <hch@lst.de>) id 1rE0Iq-00063u-Rl;
 Fri, 15 Dec 2023 05:00:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=T7x3FN5fRWZWsVxSFvjyofZy8lz4H9ag+5p6y1pv8wM=; b=lUGc9ISa6efWJ7bp8GpbtLBaLt
 X4hgnmwEG2hFVtRO9W6gcykmjZyXpOExS/3ZfpjIZzAYyEXkM0RSjlOr+jOWKSaN1amD44uV9N78j
 UinL3zxTeMMxo0dB2Lk7GoCK3wZvUmYml5D5kRywMNoNdRSn8SbiJA2FA1sT3vNw4rek=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=T7x3FN5fRWZWsVxSFvjyofZy8lz4H9ag+5p6y1pv8wM=; b=fBWahzPGAmEydncYVXaYfn3Hn8
 Nm4mKxkILa+9v7VBzLYRXGKx9/mGJBXTsvpOIzB+DRZ/AzlArAbhczNsbDy0FXPjEVp/U/HSfj+tz
 RWLbAszjgZcXkoLCR9diZbyrowuEa9x6i0w/ZirEIZ/N8Lo3WZS8IJUF5E0pprkCfEQo=;
Received: from verein.lst.de ([213.95.11.211])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rE0In-0000lz-Hs; Fri, 15 Dec 2023 05:00:00 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id 2584568D05; Fri, 15 Dec 2023 05:59:44 +0100 (CET)
Date: Fri, 15 Dec 2023 05:59:43 +0100
From: Christoph Hellwig <hch@lst.de>
To: Matthew Wilcox <willy@infradead.org>
Message-ID: <20231215045943.GA16040@lst.de>
References: <20221113162902.883850-1-hch@lst.de>
 <20221113162902.883850-5-hch@lst.de> <ZXtRBarvgSVN5zPx@casper.infradead.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ZXtRBarvgSVN5zPx@casper.infradead.org>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-Spam-Score: -0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Thu, Dec 14, 2023 at 07:01:25PM +0000,
 Matthew Wilcox wrote:
 > Was there a reason you only did this for hfs_aops and not for >
 hfs_btree_aops?
 It feels like anything that just calls > block_write_f [...] 
 Content analysis details:   (-0.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1rE0In-0000lz-Hs
Subject: Re: [Jfs-discussion] [PATCH 4/9] hfs: remove ->writepage
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
 linux-ext4@vger.kernel.org, linux-karma-devel@lists.sourceforge.net,
 Bob Copeland <me@bobcopeland.com>, Namjae Jeon <linkinjeon@kernel.org>,
 linux-mm@kvack.org, Mikulas Patocka <mikulas@artax.karlin.mff.cuni.cz>,
 Jan Kara <jack@suse.com>, linux-fsdevel@vger.kernel.org,
 Sungjong Seo <sj1557.seo@samsung.com>, Christoph Hellwig <hch@lst.de>,
 OGAWA Hirofumi <hirofumi@mail.parknet.co.jp>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

On Thu, Dec 14, 2023 at 07:01:25PM +0000, Matthew Wilcox wrote:
> Was there a reason you only did this for hfs_aops and not for
> hfs_btree_aops?  It feels like anything that just calls
> block_write_full_page() in the writepage handler should be converted
> to just calling mpage_writepages() in the writepages handler.
> I have a few of those conversions done, but obviously they're in
> filesystems that are basically untestable.

Probably.  I remember I had a good reason to skip, and the lack of
testability might have been it.  Note that for hfsplus in particular
we should actually be able to test now that the port of the hfs
userspace has returned to distros.  I haven't actually gotten to
see what the test baseline looks like, though.


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
