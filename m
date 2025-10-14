Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 99312BD7596
	for <lists+jfs-discussion@lfdr.de>; Tue, 14 Oct 2025 07:00:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:References:
	Message-ID:To:Date:Sender:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=hI9w3KnXBRyMfxGbyu6x09j67HKaxiDjzxEzVg73/Ao=; b=YCHaYdtj0/8FS2zL8slm4gYq9z
	7iJUVukFxxZ8OTentT9+HkC45fSbv67LdHkZty3pH4IagwzpykV7dC/an69b34yBlyhsCFDA80DQS
	axLcxPww9sAytAN6S2xCAP1D34LdnIj9mlBxHsKBMEhNfSuI5vOtm7YDLTwYFYe67y44=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1v8X8m-0006tm-AM;
	Tue, 14 Oct 2025 05:00:04 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <hch@lst.de>) id 1v8X8k-0006td-Qm
 for jfs-discussion@lists.sourceforge.net;
 Tue, 14 Oct 2025 05:00:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=N5Kt7wPvvc/wzewQhKU0QPVkOeL83ITNaMjuXMkWATg=; b=buodJ5fNUQAMEc/HTSCVBgDPgM
 d0vPc4oxOzyleZBGJqXX1gHroUA/01S58aBBC6RzS7SAlPEMoY5cJPiSkCzJjC1w7ZsSHV+I9/OcL
 Y1kPX4A90j17IIHYW4FzGtb3sr4NWrZS0nqDwie9yLxkvyivPY5U6A3sg3OoOAJFxre0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=N5Kt7wPvvc/wzewQhKU0QPVkOeL83ITNaMjuXMkWATg=; b=P4nFajB4oVV6G7IKqCUFnkG0q6
 D9cZ5ttjm9NKi01uwhh1LgIMPvT605JXZViOvPyMlIeuO4Qv+KXzRl6P3YY+sr/EObSfoeL7ovEVb
 4eAX9Ehy4PHrI6hpotUyiUQU/UcjTaV7bBKhnFlHiFGmZ3XnW33adj/3fbgsEae3ApKY=;
Received: from verein.lst.de ([213.95.11.211])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1v8X8k-00056O-A6 for jfs-discussion@lists.sourceforge.net;
 Tue, 14 Oct 2025 05:00:02 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id 26F11227A87; Tue, 14 Oct 2025 06:44:22 +0200 (CEST)
Date: Tue, 14 Oct 2025 06:44:21 +0200
To: Johannes Thumshirn <Johannes.Thumshirn@wdc.com>
Message-ID: <20251014044421.GA30920@lst.de>
References: <20251013025808.4111128-1-hch@lst.de>
 <20251013025808.4111128-5-hch@lst.de>
 <aae79ea0-f056-4da7-8a87-4d4fd6aea85f@wdc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <aae79ea0-f056-4da7-8a87-4d4fd6aea85f@wdc.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Mon, Oct 13, 2025 at 08:11:35AM +0000, Johannes Thumshirn
 wrote: > If you have to repost this for some reason, can you rename tmp_inode
 to > vfs_inode or sth like that? > > The name is really confu [...] 
 Content analysis details:   (0.0 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
X-Headers-End: 1v8X8k-00056O-A6
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
From: hch via Jfs-discussion <jfs-discussion@lists.sourceforge.net>
Reply-To: hch <hch@lst.de>
Cc: Latchesar Ionkov <lucho@ionkov.net>, "jfs-discussion@lists.sourceforge.net"
 <jfs-discussion@lists.sourceforge.net>, Jan Kara <jack@suse.cz>,
 Dominique Martinet <asmadeus@codewreck.org>,
 Christian Schoenebeck <linux_oss@crudebyte.com>,
 "linux-mm@kvack.org" <linux-mm@kvack.org>,
 Joseph Qi <joseph.qi@linux.alibaba.com>, hch <hch@lst.de>,
 Mark Fasheh <mark@fasheh.com>,
 "Matthew Wilcox \(Oracle\)" <willy@infradead.org>,
 "linux-ext4@vger.kernel.org" <linux-ext4@vger.kernel.org>,
 Josef Bacik <josef@toxicpanda.com>,
 "linux-block@vger.kernel.org" <linux-block@vger.kernel.org>,
 "ocfs2-devel@lists.linux.dev" <ocfs2-devel@lists.linux.dev>,
 Joel Becker <jlbec@evilplan.org>, David Sterba <dsterba@suse.com>,
 Eric Van Hensbergen <ericvh@kernel.org>,
 Christian Brauner <brauner@kernel.org>, Chris Mason <clm@fb.com>,
 "v9fs@lists.linux.dev" <v9fs@lists.linux.dev>,
 "linux-xfs@vger.kernel.org" <linux-xfs@vger.kernel.org>,
 "linux-fsdevel@vger.kernel.org" <linux-fsdevel@vger.kernel.org>,
 "linux-btrfs@vger.kernel.org" <linux-btrfs@vger.kernel.org>,
 Alexander Viro <viro@zeniv.linux.org.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

On Mon, Oct 13, 2025 at 08:11:35AM +0000, Johannes Thumshirn wrote:
> If you have to repost this for some reason, can you rename tmp_inode to 
> vfs_inode or sth like that?
> 
> The name is really confusing and the commit introducing it doesn't 
> describe it really either.

It is.  vfs_inode is kinda weird, too.  The problem is that inode
is used for the btrfs_inode.  But if there's consensus on a name
I'll happily change it.



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
