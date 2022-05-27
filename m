Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B38805358DA
	for <lists+jfs-discussion@lfdr.de>; Fri, 27 May 2022 07:41:58 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1nuSjD-0002OV-1r; Fri, 27 May 2022 05:41:39 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2) (envelope-from
 <BATV+4b38f75a90640a87185b+6851+infradead.org+hch@bombadil.srs.infradead.org>)
 id 1nuSjB-0002OO-Sh
 for jfs-discussion@lists.sourceforge.net; Fri, 27 May 2022 05:41:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=sJ7J59z0CujPyPzVAWKZfbM4pcB3EWazV5XBof/U/fE=; b=geiCIZzEUz0yWR9TJd35RgxAQa
 Fk/eJO+5sdz2y1it729szCPE1snZTTvlA6K4sEBLpySHQC/I+psYcvi9Ct7h+sLo5Pt/B845EMFJ6
 irGI7ZQLUirTxbboo18HZJEua3dGX0GyDIwua4x/zF1kRs6sRIc6PAKTZnJj6M9FjtKc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=sJ7J59z0CujPyPzVAWKZfbM4pcB3EWazV5XBof/U/fE=; b=L6F0h013Yea7Tx70nNQ5QRbXvr
 0060adSxbZYvtryIZuCWli8h7BdFItwcP1Tytz1Z7mJoVyoWcneygvA/oQxMZOfVNUdrvNhzEhfJo
 fc34R2VzxK5s6jbD6JYp6iKZl8RAge2DNprsYnxkoJ872EfVN5lntqbFYGaKwzU1FMqc=;
Received: from bombadil.infradead.org ([198.137.202.133])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nuSjB-003u5u-8Q
 for jfs-discussion@lists.sourceforge.net; Fri, 27 May 2022 05:41:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=In-Reply-To:Content-Type:MIME-Version
 :References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=sJ7J59z0CujPyPzVAWKZfbM4pcB3EWazV5XBof/U/fE=; b=JtYPhDYe2SDIh0bUZqKrL3n6T2
 CZFYdT86g49McBP2n+usIOP3Kl0D1LFwzkzRlSytajR+0tijc7THAaut9T8bus3UCzLY+7aF5TXAi
 MTtwCIR10+BV/AqV+8RWlRiVPg5s6tPon0kgncewBD+4M7SySFCuhIkWUOGaCucNGSm1s+vkF3y92
 5GWMnMLmtec3usB64/8un+P3cZCvJjwbA7hvNn5yO1t9RCtJijxhAEV8fvwQHrZtoB/t96YLbEfiW
 l2aitakw8F2FGxAeABWDyqEYj0hWA/gIj0lUAFooBGdlp/fWyFd1Ux0zylW85Dw8CgMVJvhEzzXLf
 zNwaIe2g==;
Received: from hch by bombadil.infradead.org with local (Exim 4.94.2 #2 (Red
 Hat Linux)) id 1nuSj5-00GgzL-Nx; Fri, 27 May 2022 05:41:31 +0000
Date: Thu, 26 May 2022 22:41:31 -0700
From: Christoph Hellwig <hch@infradead.org>
To: "Matthew Wilcox (Oracle)" <willy@infradead.org>
Message-ID: <YpBkiy4zvIcEXihd@infradead.org>
References: <20220526192910.357055-1-willy@infradead.org>
 <20220526192910.357055-3-willy@infradead.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220526192910.357055-3-willy@infradead.org>
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by
 bombadil.infradead.org. See http://www.infradead.org/rpr.html
X-Spam-Score: -2.5 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: I suspect this might be where your problems lies:
 blockdev_direct_IO
 calls __blockdev_direct_IO with DIO_SKIP_HOLES set. DIO_SKIP_HOLES causes
 get_more_blocks to never set the create bit to get_block except for writes
 beyond i_size. If we want to rep [...] 
 Content analysis details:   (-2.5 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.137.202.133 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-Headers-End: 1nuSjB-003u5u-8Q
Subject: Re: [Jfs-discussion] [RFC PATCH 2/9] jfs: Add jfs_iomap_begin()
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
Cc: linux-fsdevel@vger.kernel.org, Christoph Hellwig <hch@infradead.org>,
 jfs-discussion@lists.sourceforge.net, "Darrick J . Wong" <djwong@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

I suspect this might be where your problems lies:

blockdev_direct_IO calls __blockdev_direct_IO with DIO_SKIP_HOLES set.
DIO_SKIP_HOLES causes get_more_blocks to never set the create bit
to get_block except for writes beyond i_size.  If we want to replicate
that behavior with iomap, ->iomap_begin needs to return -ENOTBLK
when it encounters a hole for writing.  To properly supporting writing
to holes we'd need unwritten extents, which jfs does not support.
gfs2 might be a place to look for how to implement this.


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
