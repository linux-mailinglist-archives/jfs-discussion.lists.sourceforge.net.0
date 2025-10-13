Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F24ABD2F68
	for <lists+jfs-discussion@lfdr.de>; Mon, 13 Oct 2025 14:29:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:References:To:MIME-Version:Date:
	Message-ID:Sender:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=9UPLT1vA6h6tJuEMz0UuRYpyZeW+C43ss9f5tmQXsSY=; b=PIc7sLX0EGPs8c8Wg3XEw+vyFa
	uSVFxmQ5dV59d9/4aPe2VGMT63Vn5qIFXHlw6UliCxvKWVAjqEtLmWUzPnpcI9mopysenQx86SWK1
	vd+aL6kEGKoTy+GjzqUCwvoJSjxLVGMfqYDQGyF3EcFduE0ORRQ8EWZQwFQxyePs3J3E=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1v8Hfw-0002C5-Jk;
	Mon, 13 Oct 2025 12:29:16 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <dlemoal@kernel.org>) id 1v8Hfu-0002By-P3
 for jfs-discussion@lists.sourceforge.net;
 Mon, 13 Oct 2025 12:29:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=q+J0WxrXg1veqOPRfMnbdI3zvVkI7SLqAUnTWDz+0eU=; b=Hd8a6vt+Wpni+7AtEjTFIzxdrN
 QZJKoSCSXNaUGVC19R+a13yGTKJY4y6xJ/NEqqc1Ns1sVtx5AMWS9kHmKLg74JleRWkwGJvJSkHlU
 nM70bpsbAPhjEJEqI15Hss6mIbRsRXAU5fZJquAbbEO+wC5XE0ESqnqNONnZbivZMhTo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=q+J0WxrXg1veqOPRfMnbdI3zvVkI7SLqAUnTWDz+0eU=; b=B/sSmGxQ8s0M9ROHaFtRVRWw0Q
 Y8FbEWLmRSYUmrh0ZoXp3NdybgQwfwiebhtCFCpNc1RrrWEOHUcQyRHLz0efvRvcC4DYd++jEHLDU
 cnoGCaQOfZue6cXdxRLiTeTxxe/RsmwElaPs0syk43aBfjcrihBm/mD+PwtPuZ5VBnio=;
Received: from tor.source.kernel.org ([172.105.4.254])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1v8Hfu-0003s4-C2 for jfs-discussion@lists.sourceforge.net;
 Mon, 13 Oct 2025 12:29:14 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id 3947C60BFB;
 Mon, 13 Oct 2025 07:43:28 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 73EA0C4CEE7;
 Mon, 13 Oct 2025 07:43:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1760341407;
 bh=pLU1IwgvICYpZ3g2TCq3YLekM3iXUDoDXJJmtP+sz6A=;
 h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
 b=lnWR5DL6O1Ugwhb5lInDx7NsVnbuDNuDrNW1Qj3ABN/pQSdJlhF74Fm09Z3LeViRL
 bE2zqG/e2w6dngZxYVFNJ/Q65clf+Hj8cZCyGC9elWh2sCrl/ssUDaqCcq/BnD22lG
 5mscBQ6e6g6SgtiCsQkUqwOmjpRsjjA6bhuSVHlPWaGLahKdGSXhn8sQHQ6tCt72XF
 Rk4AQ7XlVAvM3T4VF5GRomIr8nMHBfOdFFlk+shVbgSkMhmSHIzSoJlP+5yFt1UtH0
 L4pKE/dxRF+YHRiKKH3Ri+AL6eYTysDFQCA7AbcfnAcPEZnlKNw7XpiM65yn9w2Kko
 WZ3KtavIeGATg==
Message-ID: <90d26781-97c6-48ac-9f4f-4cd14567e657@kernel.org>
Date: Mon, 13 Oct 2025 16:43:23 +0900
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
 <20251013025808.4111128-4-hch@lst.de>
Content-Language: en-US
Organization: Western Digital Research
In-Reply-To: <20251013025808.4111128-4-hch@lst.de>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 2025/10/13 11:57,
 Christoph Hellwig wrote: > Use filemap_fdatawrite_range
 instead of opencoding the logic using > filemap_fdatawrite_wbc. There is
 a slight change in the conversion > as nr_to_write [...] 
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
X-Headers-End: 1v8Hfu-0003s4-C2
Subject: Re: [Jfs-discussion] [PATCH 03/10] ocfs2: don't opencode
 filemap_fdatawrite_range in ocfs2_journal_submit_inode_data_buffers
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
> filemap_fdatawrite_wbc.  There is a slight change in the conversion
> as nr_to_write is now set to LONG_MAX instead of double the number
> of the pages in the range.  LONG_MAX is the usual nr_to_write for
> WB_SYNC_ALL writeback, and the value expected by lower layers here.
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
