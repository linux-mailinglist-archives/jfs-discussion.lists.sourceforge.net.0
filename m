Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 94845C1B6E7
	for <lists+jfs-discussion@lfdr.de>; Wed, 29 Oct 2025 15:54:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:References:In-Reply-To:
	Message-ID:Date:To:Sender:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=7NmQcMX7CUdMgkyKnqHwPv2SaiKkpO6JSe5M8WwJAkA=; b=FWAqJwlEFPBLKTHSa5202dCvrg
	o2TcOEazkdfPPpHW5cKaxG2gP/q+bs0kYwic93HoK2gCl8IidGjxtBBz3vp+e2ycNAiVWZvGVK51k
	wvKMZ6Y7iC8/XjA0kU5XjNr9LTrwCwMPUMUIfdL9TdAAMWyT8kXE7jjaLlXaNTep+78M=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1vE7Yg-0003rD-Nn;
	Wed, 29 Oct 2025 14:53:54 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <brauner@kernel.org>) id 1vE7Yb-0003r3-GK
 for jfs-discussion@lists.sourceforge.net;
 Wed, 29 Oct 2025 14:53:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=xyCpitqWMdD7yCXV5WYiC8JZkRSQX5VzGoFOnyLmDhI=; b=UQTyp7iR2luKkavT+xJxeFjRvm
 zhTXmx6MdI562xWp1LwywTthMofkKEVRftHqUQnyyix2PmgkCFRon4MjOhaH98NFw0G4L82D1G49m
 JDH8TOOLaQ5cn+mX38qTPiQUMijsXycFuarWCo6W4wYzwrSjOrqtmMFYWMrNxU3MNrUc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=xyCpitqWMdD7yCXV5WYiC8JZkRSQX5VzGoFOnyLmDhI=; b=LSZaz2tp3lV9G5LUkTRfY71D3A
 7MkmwDjQs7Z3spihcK7KzOdG5sBvqRNmFqUie20714sAnfa17x8C6ENMdfs+XRjRm7F2RqgpbiBQp
 46vRZgXquK1go17NlXcqD51TYruI01MWe630b2bIPkSuqNGrHE0TZ3gIbqLohmnXrVtI=;
Received: from tor.source.kernel.org ([172.105.4.254])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1vE7Ya-0002M2-Tr for jfs-discussion@lists.sourceforge.net;
 Wed, 29 Oct 2025 14:53:49 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id 0F61660488;
 Wed, 29 Oct 2025 14:53:38 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 75851C4CEF7;
 Wed, 29 Oct 2025 14:53:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1761749617;
 bh=4N52YreIUF0OvAY3AgVuCEeEXHoxvfXQKpRpGqGXt0Y=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=d6i+Tpv81I+RjXv1z/ZhRypcIVRTtXraq5U9iBWHQnvW+KkPDvGl1y2pSEVEa6fIB
 Ln4x6wF3AkfAIwedEj981+iIN+wR6+btNH1aNeYDoUlV+PjuWWLC2qWuazlwsZDUyc
 w6JEXBhDvgpuQ5ndnBinokI18XbR2srsXkcfTy4nMLpLT5LYAeO4NgeFX7Rl3DUghg
 Y+Yu9YxHcIql1AYDpRrZVpwWLKrTXwOqAs1s25OG2ooUXYEvx3zM1w82Fg077igDaB
 eTslPtXRVVOcLbKtU1sdxtLF6P6BiY2N2GMT83pc272G20lW+5PvUy3M8NbUj0mjMG
 oZaRyJXLYf5Iw==
To: Christoph Hellwig <hch@lst.de>
Date: Wed, 29 Oct 2025 15:53:19 +0100
Message-ID: <20251029-fahrdienst-klaglos-834e266b8e42@brauner>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20251024080431.324236-1-hch@lst.de>
References: <20251024080431.324236-1-hch@lst.de>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=2522; i=brauner@kernel.org;
 h=from:subject:message-id; bh=4N52YreIUF0OvAY3AgVuCEeEXHoxvfXQKpRpGqGXt0Y=;
 b=owGbwMvMwCU28Zj0gdSKO4sYT6slMWQyaaVPuJ+i9m4br2nk2mOv3Hiqzuq8kEi/LX5pZ5Jpp
 1hLQ0l0RykLgxgXg6yYIotDu0m43HKeis1GmRowc1iZQIYwcHEKwESObmZkePvsGoekGs9rdpbt
 ZmmmOZrb/hx/6K49NePTtSDdi8HVvIwMl5ZenxV508LqDt+pO5cidkrwHHy3v/970ayNXZffekh
 4MAEA
X-Developer-Key: i=brauner@kernel.org; a=openpgp;
 fpr=4880B8C9BD0E5106FC070F4F7B3C391EFEA93624
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Fri, 24 Oct 2025 10:04:11 +0200, Christoph Hellwig wrote:
 > while looking at the filemap writeback code,
 I think adding > filemap_fdatawrite_wbc
 ended up being a mistake, as all but the original > [...] 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1vE7Ya-0002M2-Tr
Subject: Re: [Jfs-discussion] filemap_* writeback interface cleanups v2
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
From: Christian Brauner via Jfs-discussion
 <jfs-discussion@lists.sourceforge.net>
Reply-To: Christian Brauner <brauner@kernel.org>
Cc: Latchesar Ionkov <lucho@ionkov.net>, jfs-discussion@lists.sourceforge.net,
 Jan Kara <jack@suse.cz>, Dominique Martinet <asmadeus@codewreck.org>,
 Christian Schoenebeck <linux_oss@crudebyte.com>,
 Joseph Qi <joseph.qi@linux.alibaba.com>, linux-mm@kvack.org,
 Mark Fasheh <mark@fasheh.com>,
 "Matthew Wilcox \(Oracle\)" <willy@infradead.org>, linux-ext4@vger.kernel.org,
 Josef Bacik <josef@toxicpanda.com>, linux-block@vger.kernel.org,
 ocfs2-devel@lists.linux.dev, Alexander Viro <viro@zeniv.linux.org.uk>,
 David Sterba <dsterba@suse.com>, Eric Van Hensbergen <ericvh@kernel.org>,
 Christian Brauner <brauner@kernel.org>, Chris Mason <clm@fb.com>,
 v9fs@lists.linux.dev, linux-xfs@vger.kernel.org, linux-fsdevel@vger.kernel.org,
 linux-btrfs@vger.kernel.org, Joel Becker <jlbec@evilplan.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

On Fri, 24 Oct 2025 10:04:11 +0200, Christoph Hellwig wrote:
> while looking at the filemap writeback code, I think adding
> filemap_fdatawrite_wbc ended up being a mistake, as all but the original
> btrfs caller should be using better high level interfaces instead.  This
> series removes all these, switches btrfs to a more specific interfaces
> and also cleans up another too low-level interface.  With this the
> writeback_control that is passed to the writeback code is only
> initialized in three places, although there are a lot more places in
> file system code that never reach the common writeback code.
> 
> [...]

Applied to the vfs-6.19.writeback branch of the vfs/vfs.git tree.
Patches in the vfs-6.19.writeback branch should appear in linux-next soon.

Please report any outstanding bugs that were missed during review in a
new review to the original patch series allowing us to drop it.

It's encouraged to provide Acked-bys and Reviewed-bys even though the
patch has now been applied. If possible patch trailers will be updated.

Note that commit hashes shown below are subject to change due to rebase,
trailer updates or similar. If in doubt, please check the listed branch.

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/vfs/vfs.git
branch: vfs-6.19.writeback

[01/10] mm: don't opencode filemap_fdatawrite_range in filemap_invalidate_inode
        https://git.kernel.org/vfs/vfs/c/a21134b5d6cb
[02/10] 9p: don't opencode filemap_fdatawrite_range in v9fs_mmap_vm_close
        https://git.kernel.org/vfs/vfs/c/3c2e5cee5eb3
[03/10] ocfs2: don't opencode filemap_fdatawrite_range in ocfs2_journal_submit_inode_data_buffers
        https://git.kernel.org/vfs/vfs/c/890f141da068
[04/10] btrfs: use the local tmp_inode variable in start_delalloc_inodes
        https://git.kernel.org/vfs/vfs/c/41e52c644753
[05/10] btrfs: push struct writeback_control into start_delalloc_inodes
        https://git.kernel.org/vfs/vfs/c/c9501112e3cb
[06/10] mm,btrfs: add a filemap_flush_nr helper
        https://git.kernel.org/vfs/vfs/c/7fabcb7fbabb
[07/10] mm: remove __filemap_fdatawrite
        https://git.kernel.org/vfs/vfs/c/735965144806
[08/10] mm: remove filemap_fdatawrite_wbc
        https://git.kernel.org/vfs/vfs/c/1bcb413d0cd8
[09/10] mm: remove __filemap_fdatawrite_range
        https://git.kernel.org/vfs/vfs/c/45cbce5b8877
[10/10] mm: rename filemap_fdatawrite_range_kick to filemap_flush_range
        https://git.kernel.org/vfs/vfs/c/c28d67b33cbf


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
