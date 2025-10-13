Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E197BD1EF8
	for <lists+jfs-discussion@lfdr.de>; Mon, 13 Oct 2025 10:09:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:References:To:MIME-Version:Date:
	Message-ID:Sender:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=TXUE7YQN0k+bvdjYmXWvrAIZx9257r6o880IPX+/5Ps=; b=ejiP7C0EbmXUwKdJxOv62IpV32
	RMe0pGih+Pdy9l95+zsC01uCjXMfdWxKyHR92seZJX+qXRcBdaak/IGnxa/lZ2+1yVRequSkZR3qq
	ZEgnu/DRkVtH20LI+ZoC6ADPKa41o0LcdtX8hezPvWN9UvNcziaLBHzoxVG0DbJ4HOeE=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1v8DcJ-0004v9-7b;
	Mon, 13 Oct 2025 08:09:15 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <dlemoal@kernel.org>) id 1v8DcH-0004uz-7p
 for jfs-discussion@lists.sourceforge.net;
 Mon, 13 Oct 2025 08:09:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=MZvcUyE/3rm7XVjVfA5sB0LiuyxoL4N5gYGG3dyEWUo=; b=Xk3/sBDUq121x918nUaPUPnX28
 ogxPEQKUWRF+Bex8e/o+Awrrn3amDa96E/7tJw6v9tr4DeAzHRq9UIz8SKJ6YPoyeBBEcQJGQPtJW
 IRGWbDbfAdUtYXLgTkm2l7ARHq8WztGG03G0z7CDj7swnGVWdgej9x0Ny7rnTutRBVyg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=MZvcUyE/3rm7XVjVfA5sB0LiuyxoL4N5gYGG3dyEWUo=; b=m1jzB2WXgcAYmfWfwFANXCnTqa
 XWWt2rW2gUyh3dJkQGNz2BqQSiFdSwHJ5tK2OjieWdtDtObqpyqwfGs/cR8g0xqSQtjb2y0KkCV92
 xr2D6MNn132dChpncfeb5VPPO3VMXcp6sv5dLUmxH1NC0wzv8cG76uMCPOY99Rzm8Znc=;
Received: from tor.source.kernel.org ([172.105.4.254])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1v8DcG-0005ZT-Pw for jfs-discussion@lists.sourceforge.net;
 Mon, 13 Oct 2025 08:09:13 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id 3325861139;
 Mon, 13 Oct 2025 08:09:07 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 61F32C4CEE7;
 Mon, 13 Oct 2025 08:09:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1760342946;
 bh=gDCK0s48HW2hUV0Q7ClAR5lIhUaH2d/9Yb/F3zIIufk=;
 h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
 b=iJ+uHNePZM88j5ktJ5Bn1podhcv/yo+c/xoKWvmJCMV2YxHE+DNLDoI56qVkiCpTn
 TxoscpmAdTgCxdgycT4KHSRE3r70iCpIgB7T7rI+1qUaM6ZZ+nt7mZjUbSA4b7Lrux
 lUjw2K+OcCGzjj/6Ls0XCbV18L5FC4//4YoTGf/NMPzI6P1qWPH60TtfBA4kJShdjC
 iqqE20h+7G6vYXYQLxzOsnRt8mRSEdjloLa4cbPqMDozwhAdJFn5cCaxx1RclH6zYT
 Ysxe5J51HpSdoRXr4GrxLj69WDrKliXSJ4D7ff5TWJkpFEP96aTqY2YXjNkXI3Iwox
 H2lbji/ExBBBg==
Message-ID: <e0fa533d-c3c4-4a94-9e22-c379d69cb640@kernel.org>
Date: Mon, 13 Oct 2025 17:09:02 +0900
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
 <20251013025808.4111128-10-hch@lst.de>
Content-Language: en-US
Organization: Western Digital Research
In-Reply-To: <20251013025808.4111128-10-hch@lst.de>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 2025/10/13 11:58,
 Christoph Hellwig wrote: > Use filemap_fdatawrite_range
 and filemap_fdatawrite_range_kick instead > of the low-level
 __filemap_fdatawrite_range
 that requires the caller > to know [...] 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1v8DcG-0005ZT-Pw
Subject: Re: [Jfs-discussion] [PATCH 09/10] mm: remove
 __filemap_fdatawrite_range
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

On 2025/10/13 11:58, Christoph Hellwig wrote:
> Use filemap_fdatawrite_range and filemap_fdatawrite_range_kick instead
> of the low-level __filemap_fdatawrite_range that requires the caller
> to know the internals of the writeback_control structure and remove
> __filemap_fdatawrite_range now that it is trivial and only two callers
> would be left.
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
