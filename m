Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id BB53EBD1D9B
	for <lists+jfs-discussion@lfdr.de>; Mon, 13 Oct 2025 09:42:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:References:To:MIME-Version:Date:
	Message-ID:Sender:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=zmV92pmR2NL03h5YIMCFF1Bq1nb6m00TOBaAtTmEnEs=; b=aoUSRZCXb6Db9HzVxUSd8NaSHf
	KuKvge3ZI1zQo3nkI6BSOOJdBo3a+/vKid1zwZvDOhaFP55ed8Aiqkys7ZZ/tkIkiqWftUNsWmPE7
	63ASJVscvtu0o//gEx/YvSw9D3l6bxtB1dWSSuzPpsX9BOngULLqqvyzd6hWnk1XmD5o=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1v8DBX-0003YR-4O;
	Mon, 13 Oct 2025 07:41:35 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <dlemoal@kernel.org>) id 1v8DBV-0003Y9-De
 for jfs-discussion@lists.sourceforge.net;
 Mon, 13 Oct 2025 07:41:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=gjBd7ViABM92G5SbEPZDU6kQ3B1a97IO6iX9leLL3Kg=; b=YyiJmXyoDqL2BzcJBOynwRuN4V
 g+psWY2TWqFncSnO8HbZkZd2XH5gHG2ZE2Td5Cy4g3ZEftj/Wxy00pLpt/f+NjUeSJiGZw5PR9CMx
 k4lFL2Eb+UxtxFfVCL0cq+jElvixI8UowJTpI7A8Y7yF2ei15XZRuI6wpDPjZzrbpFSE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=gjBd7ViABM92G5SbEPZDU6kQ3B1a97IO6iX9leLL3Kg=; b=VjHx+rlNUkQ/+2yfzIFCj/U+nK
 U8DN0uADdSBRBXXHPtX50uWqdkCWJpx6Zxtiayokp+zYXUid/JJ2P3hACLkqA+5cMfALMYnSVCzKe
 /8F1pIHGeC4i/+2y7zES07syWCf2Fg1J8KhDnKc3tFPgGUYT4N6SiIJ5y8QmN4bfcEhw=;
Received: from tor.source.kernel.org ([172.105.4.254])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1v8DBV-0002ha-PU for jfs-discussion@lists.sourceforge.net;
 Mon, 13 Oct 2025 07:41:34 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id 209AE604BE;
 Mon, 13 Oct 2025 07:41:23 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 445E3C4CEE7;
 Mon, 13 Oct 2025 07:41:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1760341282;
 bh=9BuTDzaR1my5eKzXxHUiTDJrNndjS3jKSzq9fhN1ZZI=;
 h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
 b=F/DFd5ZYNP3J4xWwD4ImXWRAWOwNap/62bMhdThDYgc3/2IeAz5fOWHNeFTbdUa6W
 JQMJl06Yc7WAUEse9bKwJr7KQXApDxR2fsQ/ZbQftiID6tJFy6Jnu2iQ2etXhYY/1y
 fVXIyAHi8tj3743VeMDXBjLUUrv18KxGfykZwRfAP7rdEtulKKUOga9wIU4T24i89s
 5cCRR1LLRSGWJkqeQgu66Dho0nOsRvXxAhZp39wGJg4Kw1XaJwc4WPhP67KOX4l0Nu
 JYHMFDzA+2JaD+TLc2aws0RwskQ1TJFy11dVJWXXcBlGHq7DxG1Bl9to7qt0KVOyIG
 RWBwZk7se8h2A==
Message-ID: <a1759d1c-08dc-46e3-96b2-9ae2d8258b22@kernel.org>
Date: Mon, 13 Oct 2025 16:41:17 +0900
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Christoph Hellwig <hch@lst.de>,
 "Matthew Wilcox (Oracle)" <willy@infradead.org>,
 Eric Van Hensbergen <ericvh@kernel.org>, Latchesar Ionkov
 <lucho@ionkov.net>, Dominique Martinet <asmadeus@codewreck.org>,
 Christian Schoenebeck <linux_oss@crudebyte.com>, Chris Mason <clm@fb.com>,
 David Sterba <dsterba@suse.com>, Mark Fasheh <mark@fasheh.com>,
 Joel Becker <jlbec@evilplan.org>, Joseph Qi <joseph.qi@linux.alibaba.com>
References: <20251013025808.4111128-1-hch@lst.de>
 <20251013025808.4111128-2-hch@lst.de>
Content-Language: en-US
Organization: Western Digital Research
In-Reply-To: <20251013025808.4111128-2-hch@lst.de>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 2025/10/13 11:57,
 Christoph Hellwig wrote: > Use filemap_fdatawrite_range
 instead of opencoding the logic using > filemap_fdatawrite_wbc. > >
 Signed-off-by:
 Christoph Hellwig <hch@lst.de> Reviewed-by: Damien Le Moal
 <dlemoal@kernel.org>
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1v8DBV-0002ha-PU
Subject: Re: [Jfs-discussion] [PATCH 01/10] mm: don't opencode
 filemap_fdatawrite_range in filemap_invalidate_inode
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
From: Damien Le Moal via Jfs-discussion <jfs-discussion@lists.sourceforge.net>
Reply-To: Damien Le Moal <dlemoal@kernel.org>
Cc: linux-xfs@vger.kernel.org, Christian Brauner <brauner@kernel.org>,
 Jan Kara <jack@suse.cz>, linux-mm@kvack.org, v9fs@lists.linux.dev,
 Josef Bacik <josef@toxicpanda.com>, linux-block@vger.kernel.org,
 ocfs2-devel@lists.linux.dev, Alexander Viro <viro@zeniv.linux.org.uk>,
 jfs-discussion@lists.sourceforge.net, linux-fsdevel@vger.kernel.org,
 linux-ext4@vger.kernel.org, linux-btrfs@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

On 2025/10/13 11:57, Christoph Hellwig wrote:
> Use filemap_fdatawrite_range instead of opencoding the logic using
> filemap_fdatawrite_wbc.
> 
> Signed-off-by: Christoph Hellwig <hch@lst.de>

Reviewed-by: Damien Le Moal <dlemoal@kernel.org>


-- 
Damien Le Moal
Western Digital Research


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
