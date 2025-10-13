Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 00E94BD1DE6
	for <lists+jfs-discussion@lfdr.de>; Mon, 13 Oct 2025 09:48:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:References:To:MIME-Version:Date:
	Message-ID:Sender:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=OK6jOeu1Vi08xlraBkDtGEencgYEAxfX9T9OTJ588ss=; b=ARkoo2/7R2Cr4kq5ZaDMSaIy6A
	D9L8Adbh/lApakknUJRa6rG7+GC3I+ejvrrura/KuXTgAk7Gaxu3RwRRxSj3PJu40xBiRw5a0Pm0O
	m07rPcnZeX8BPTpTy9fx1fDPJlL1EHi5ainDoVa0jlnXumU31gsqEs3CzYtU/L3La9pw=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1v8DI7-0006Ze-7X;
	Mon, 13 Oct 2025 07:48:23 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <dlemoal@kernel.org>) id 1v8DI6-0006ZV-Lk
 for jfs-discussion@lists.sourceforge.net;
 Mon, 13 Oct 2025 07:48:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=T5LTKgp9fwueJ2RgoRVhHKml4+wsGy+zdEi5rwXNdX4=; b=A4mspD4WI+uevarN20mpYr9daM
 cLq15WKRTQo3mcwZowZ9kC1kI15RL2U8PlS/URV8WTqK7cXJlS9xNoRksO/Q2E+P1iv6z3OvfOXn6
 3QbdLETY1T+uCglsER055PQEEbgY/u3064wuszYzkhQ9T2e4XSe6NWGoxDxWnlSy0l4M=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=T5LTKgp9fwueJ2RgoRVhHKml4+wsGy+zdEi5rwXNdX4=; b=STU1pawqIgkBSB/ijzSi1mWuIi
 PPpWV8/6Kmw7PJfWlAO45laF4zhTeCjTqTd73Hf9uKrmpa57WlNStf40hkLCYX2floWmnmOmWi6i5
 Rwt5RSh2X8etHezpN682i5oosZLn0cIlFAfRXfTyYdQr+M1OwbPbNqqHgVEBzT8fAab4=;
Received: from sea.source.kernel.org ([172.234.252.31])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1v8DI6-0003Ho-92 for jfs-discussion@lists.sourceforge.net;
 Mon, 13 Oct 2025 07:48:22 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id B2DB243A30;
 Mon, 13 Oct 2025 07:48:11 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 14BB5C4CEE7;
 Mon, 13 Oct 2025 07:48:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1760341691;
 bh=W5wcCFPexeGvn/sWSNJLJR9WixkS/7o9Gp49Ix6jPvE=;
 h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
 b=UPPmQkpyyYVS6SOITQIR/LEENy+jW+pKmV5ySk18gTKCucgkHN0dqQ7TKnMY+LaK6
 EDi+sx9kCjZEUtwvd5w55ZndyNVIxgknDRmJrideQfFKgHVz4+9SsJr0m8x+PocrDm
 xqQgWiOSWszxzHuvV5mYNWImqt0WlPe9/zd17OvqMXFiSSVNPF4hbTxbQtxUfaNPu6
 Pt7OyMr8bHcfKmIpXX77KjuumNNIKfuiJY2Wy47C96vfDrxy5xH/bW0v/XnYk89arN
 QPKWQwGZtw0c/lR0fFdRJuAU1uZSFpxzo20ZIF/pwbY9proseoAtFujC1htoxYXum+
 4zIFMnJ01t21A==
Message-ID: <e7521bcc-ee24-479b-8384-a0d6e1de43b0@kernel.org>
Date: Mon, 13 Oct 2025 16:48:06 +0900
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
 <20251013025808.4111128-5-hch@lst.de>
Content-Language: en-US
Organization: Western Digital Research
In-Reply-To: <20251013025808.4111128-5-hch@lst.de>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 2025/10/13 11:57,
 Christoph Hellwig wrote: > start_delalloc_inodes
 has a struct inode * pointer available in the > main loop, use it instead
 of re-calculating it from the btrfs inode. > > Signed-of [...] 
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
X-Headers-End: 1v8DI6-0003Ho-92
Subject: Re: [Jfs-discussion] [PATCH 04/10] btrfs: use the local tmp_inode
 variable in start_delalloc_inodes
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
> start_delalloc_inodes has a struct inode * pointer available in the
> main loop, use it instead of re-calculating it from the btrfs inode.
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
