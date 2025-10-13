Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D61FBBD1F79
	for <lists+jfs-discussion@lfdr.de>; Mon, 13 Oct 2025 10:14:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:References:To:MIME-Version:Date:
	Message-ID:Sender:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Ny7agPJUqaxbZJUybJKYzXCz66aGKVkh1ses1howP2A=; b=X8oGBRpxQhSu9j0ydLn5lmdToh
	z8AiVh3b3lItZui11d0WouMUOeuwYacH1TRqfpn1qp371viDhOlzQv8N8LjZT+wfKJpo8aSN8NNMI
	1Pc+hjKcQHR0acqcXSyNKWQ6XotVkavkiwZCbjjTXhsa5tfpwnxIwy3EuJVi7AOJEFYQ=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1v8Dhc-0003gu-LU;
	Mon, 13 Oct 2025 08:14:44 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <dlemoal@kernel.org>) id 1v8DhT-0003bT-Eo
 for jfs-discussion@lists.sourceforge.net;
 Mon, 13 Oct 2025 08:14:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=lv4v1mVXUGBZme+ObR4gv86sycJFRBxk4vuLZjff9Pw=; b=P46ozcOVqCvfOi6X3XBJefz60r
 u1s9QzkPLABt82CIQRQuD4bGqkdL9RcS3tj8gxD5yigqSIrapvyF/9NsssEHmjvq88WQnHzBNYqyx
 yKzxEq5bf3ObMqtbGsv1XgMyhp+OFOgNnzWPx+iEoV9SzBNXrcWFDzj6Yoa/H2lPUfwU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=lv4v1mVXUGBZme+ObR4gv86sycJFRBxk4vuLZjff9Pw=; b=j85Q1yPEUt0eYT9a24qH+ouDM7
 K91YZSZHW9s4PC/vdTr/DTvp38xpF0zVywJ3SiBM7zIWtPWYUAYSgcfUWZQ3tMEpsnMBT28Tozu36
 3Ii8zuoEDUjv8w4YZNG8mTG9HzaH995lxZmpdklDTWhYA60R1KMvvYLy4cuAKR8jP0V0=;
Received: from sea.source.kernel.org ([172.234.252.31])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1v8DhT-0006Dm-19 for jfs-discussion@lists.sourceforge.net;
 Mon, 13 Oct 2025 08:14:35 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id 9D2E344B35;
 Mon, 13 Oct 2025 08:14:29 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E8A99C4CEE7;
 Mon, 13 Oct 2025 08:14:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1760343269;
 bh=TlFiaImgbVabS38jmlSM6UkcfOwbkJdDdnK/tEF+2vY=;
 h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
 b=V3AtLQ1fS8zZ/2ezshsTwCsBvJcjgi0ekhuX1RhLLC8H5aAMLaGDUkWo/LvUlIIm9
 OvzGYgpbpld7XTthVPMOdKM5yOUnL/uGR4mhcQ1zjDDEOP3a4FYRFN8MDfAJZ0hN/0
 B1r73UiFOk74eDqSWg51UPKQ6EsGQ6x8a0MyvK5PQNUWG4pyM44sqa5bLKYCC8etQt
 EfcNW1rBaNDRxSpFuNXseyY3tXMjkeLDN1sMysKNKPQZECVPp/0y1gnONQUpiVl/40
 mAg7LJim2aPbunYRmHMLtQevGQBRb1g/DQUfQHKcxpy9z2fbpePDVuqKd5KoQ0NQJS
 noU/c3DYR/HIA==
Message-ID: <2fd2cca0-6669-47c0-a322-4c702d5319d3@kernel.org>
Date: Mon, 13 Oct 2025 17:14:24 +0900
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
 <20251013025808.4111128-11-hch@lst.de>
Content-Language: en-US
Organization: Western Digital Research
In-Reply-To: <20251013025808.4111128-11-hch@lst.de>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 2025/10/13 11:58,
 Christoph Hellwig wrote: > Make the naming
 consistent with the other helpers and get away from > the flush terminology
 that is way to overloaded. > > Signed-off-by: Christoph Hell [...] 
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
X-Headers-End: 1v8DhT-0006Dm-19
Subject: Re: [Jfs-discussion] [PATCH 10/10] mm: rename filemap_flush to
 filemap_fdatawrite_kick
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
> Make the naming consistent with the other helpers and get away from
> the flush terminology that is way to overloaded.
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
