Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 10C9D53636D
	for <lists+jfs-discussion@lfdr.de>; Fri, 27 May 2022 15:45:54 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1nuaHV-0000Q5-8H; Fri, 27 May 2022 13:45:32 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <willy@infradead.org>) id 1nuaHR-0000Pv-R4
 for jfs-discussion@lists.sourceforge.net; Fri, 27 May 2022 13:45:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=kRAMak/QMX+Vy1vstuhkTyCxrdSHGLmOpRl1L9RhyIk=; b=h3a3OtQNHglPAYEdu/64Pis1LM
 OOLzm1Kz3UlseaSbWVaiUxT2EdJ8dzKDAKHKIeqRQLzwAo+Ex5oARWjjh+9ArBdv6GYLe536kL87D
 rL1aXbd+NXsTVJC4nC29atiAd4v+c7a7hZtPmAWZHkoD0e9Ax9NKclgLjJDxTdTVtdxk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=kRAMak/QMX+Vy1vstuhkTyCxrdSHGLmOpRl1L9RhyIk=; b=YDmpGNzuyJe5bbgwYhmskk78xg
 gDPPHnPO5PXOpI4fr/TeRV8GU/ixl6Sy9CmxdoQJcjUI4vn1ZZa7A/b31K9XaJGBAtTzqG8siRxoh
 YWPaArv5cNTUWU26b8je20WtKY4WvpUEMLgsfPhcSVAQeJ0zy+LCxNhd36/oXh/eqg9s=;
Received: from casper.infradead.org ([90.155.50.34])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nuaHN-004K8R-Gx
 for jfs-discussion@lists.sourceforge.net; Fri, 27 May 2022 13:45:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=kRAMak/QMX+Vy1vstuhkTyCxrdSHGLmOpRl1L9RhyIk=; b=IBVCMTh4DSp8VWNHxHqBtbgpEK
 GqoBHOYOA5U1NpQqYxp6XkELquuFW/y3sefcr3VgxPu/TQJw0qq4lK+y9rWc2ZQ5DAso7ziUT9jjs
 TCrzq93jiPI+5fFIPCCqCHDsG8FXruErDDTwYN0LdzLaaa6KhGxHAceWspCb9rVolLTUBnXEV/9CM
 tU4NtzNzVhY3+I/2C7Y4v8H3OD/K3qkpuiMAwz7BIYzW+WfQ4vYc+rt2mtBdThvingPLo+POPIsJ3
 LMSdczqXhqtY8wSEfJvzkwZ47DaxGo3R3YMS3wcoGbucKSDDuAhZQaNtvFeboC+sZarWRD76ZAfMk
 QZk29+wQ==;
Received: from willy by casper.infradead.org with local (Exim 4.94.2 #2 (Red
 Hat Linux)) id 1nuaHA-0028JT-S6; Fri, 27 May 2022 13:45:12 +0000
Date: Fri, 27 May 2022 14:45:12 +0100
From: Matthew Wilcox <willy@infradead.org>
To: Christoph Hellwig <hch@infradead.org>
Message-ID: <YpDV6NPBefdYRywi@casper.infradead.org>
References: <20220526192910.357055-1-willy@infradead.org>
 <20220526192910.357055-3-willy@infradead.org>
 <YpBkiy4zvIcEXihd@infradead.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YpBkiy4zvIcEXihd@infradead.org>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Thu, May 26, 2022 at 10:41:31PM -0700, Christoph Hellwig
 wrote: > I suspect this might be where your problems lies: > >
 blockdev_direct_IO
 calls __blockdev_direct_IO with DIO_SKIP_HOLES set. > DIO_ [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1nuaHN-004K8R-Gx
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
Cc: linux-fsdevel@vger.kernel.org, "Darrick J . Wong" <djwong@kernel.org>,
 jfs-discussion@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

On Thu, May 26, 2022 at 10:41:31PM -0700, Christoph Hellwig wrote:
> I suspect this might be where your problems lies:
> 
> blockdev_direct_IO calls __blockdev_direct_IO with DIO_SKIP_HOLES set.
> DIO_SKIP_HOLES causes get_more_blocks to never set the create bit
> to get_block except for writes beyond i_size.  If we want to replicate
> that behavior with iomap, ->iomap_begin needs to return -ENOTBLK
> when it encounters a hole for writing.  To properly supporting writing
> to holes we'd need unwritten extents, which jfs does not support.
> gfs2 might be a place to look for how to implement this.

I think JFS does support unwritten extents,
fs/jfs/jfs_xtree.h:#define XAD_NOTRECORDED 0x08 /* allocated but not recorded */

However, we always pass 'false' to extAlloc() today, so I think it
hasn't been tested in a while?  I'm not sure I want to be the one to
start using new features on JFS for something that's supposed to be
a relatively quick cleanup.


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
