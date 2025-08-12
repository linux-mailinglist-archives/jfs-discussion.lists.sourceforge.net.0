Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id ECAADB21E65
	for <lists+jfs-discussion@lfdr.de>; Tue, 12 Aug 2025 08:33:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:References:
	Message-ID:To:Date:Sender:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=o2/wzrc45LEb6TZk51MX+6O51eT+QrXTHomaiQZvtgc=; b=SW1Ab44zXOxXCuTd43fRdtiNPq
	ZDWrUuZEsIjFCytVnxZk5R96hbF9LQfvXZHHMDwwmKUgkYGqpaB3c5yHhWk9HIH571hbO/qSFTx+M
	/f5q3y7jQ2SSAhqzAkLU82gBH6z8LU7qxj5KkQZVm1jzgT+qKLRNvkYcggQndH6gKbkI=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1uliZR-0004Jg-7C;
	Tue, 12 Aug 2025 06:33:18 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <gregkh@linuxfoundation.org>) id 1uliZK-0004JA-Mx
 for jfs-discussion@lists.sourceforge.net;
 Tue, 12 Aug 2025 06:33:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=80CcYUyhFS51zi8RkV5UHs4TwEeN2kI+C7wf490nVe0=; b=hYrBb6KTtf5FvF9aw/sSkrTVAa
 Y+R+FG815uV2vV00ELBfyHZg0mAzjOHtsmmXAUIGUd+sb5tc4jrNK7gos0KX/SAiDWFxPRNUwO/Mw
 HlWRgertL68bpWhade2gDiXHfoTwuVNdAuj1sFioaWmfN7qip7GRDjckAltCuC1XdZxQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=80CcYUyhFS51zi8RkV5UHs4TwEeN2kI+C7wf490nVe0=; b=j8GVHdWhZPWZkpMBAbkQ1eL3GB
 rfnQP9ODDi7U7Ar52sjXDzhIPkiYRbDRpOVakyGv1GUAkF3uR4ApoWs6PoZCDlwF13cGlXrLXlR0B
 ObjeFTUDgm5emdDgLvKlfXmcwIYzzqUulsxM9FjdWqn2+bbs6pT7NqkS4Sj1n3Tj/xmI=;
Received: from tor.source.kernel.org ([172.105.4.254])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1uliZL-0005Nt-2o for jfs-discussion@lists.sourceforge.net;
 Tue, 12 Aug 2025 06:33:11 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id 53FB361138;
 Tue, 12 Aug 2025 06:33:00 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6C5D8C4CEF0;
 Tue, 12 Aug 2025 06:32:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1754980380;
 bh=L+sX4qQqPbDUBLkuV1Ks7WnwsWzP4JYCHfnG9R60EsQ=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=o3Zdl07+nWJldBMbMVuKTfEaKA02+JJIAzDpjCNhxFWBMLdaRJJhBmPRrgtO3jhOn
 3DLPc/DlinkClYmp8AGn0qc5ZzONh5I+O4JSq3yBXwTxghSqeequDUZMB4Ps5ZU4fP
 axmDeKecaYk3Uif6H2WsVrS0XFX4G8URQzeK1yi8=
Date: Tue, 12 Aug 2025 08:32:56 +0200
To: David Hildenbrand <david@redhat.com>
Message-ID: <2025081248-frisbee-empathic-1815@gregkh>
References: <20250811143949.1117439-1-david@redhat.com>
 <20250811143949.1117439-3-david@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250811143949.1117439-3-david@redhat.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Mon, Aug 11, 2025 at 04:39:48PM +0200, David Hildenbrand
 wrote: > At this point MIGRATEPAGE_SUCCESS is misnamed for all folio users,
 > and now that we remove MIGRATEPAGE_UNMAP, it's really the only [...] 
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
X-Headers-End: 1uliZL-0005Nt-2o
Subject: Re: [Jfs-discussion] [PATCH v1 2/2] treewide: remove
 MIGRATEPAGE_SUCCESS
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
From: Greg Kroah-Hartman via Jfs-discussion
 <jfs-discussion@lists.sourceforge.net>
Reply-To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: linux-aio@kvack.org, jfs-discussion@lists.sourceforge.net,
 Jan Kara <jack@suse.cz>, "Michael S. Tsirkin" <mst@redhat.com>,
 Jason Wang <jasowang@redhat.com>, linux-mm@kvack.org,
 Ying Huang <ying.huang@linux.alibaba.com>,
 Matthew Brost <matthew.brost@intel.com>,
 Xuan Zhuo <xuanzhuo@linux.alibaba.com>,
 Madhavan Srinivasan <maddy@linux.ibm.com>, Rakie Kim <rakie.kim@sk.com>,
 Sergey Senozhatsky <senozhatsky@chromium.org>,
 Michael Ellerman <mpe@ellerman.id.au>, Alistair Popple <apopple@nvidia.com>,
 Christophe Leroy <christophe.leroy@csgroup.eu>,
 Eugenio =?iso-8859-1?Q?P=E9rez?= <eperezma@redhat.com>,
 Zi Yan <ziy@nvidia.com>, Josef Bacik <josef@toxicpanda.com>,
 Gregory Price <gourry@gourry.net>, Byungchul Park <byungchul@sk.com>,
 Arnd Bergmann <arnd@arndb.de>, Dave Kleikamp <shaggy@kernel.org>,
 virtualization@lists.linux.dev, Nicholas Piggin <npiggin@gmail.com>,
 Jerrin Shaji George <jerrin.shaji-george@broadcom.com>,
 Alexander Viro <viro@zeniv.linux.org.uk>, David Sterba <dsterba@suse.com>,
 Oscar Salvador <osalvador@suse.de>, Joshua Hahn <joshua.hahnjy@gmail.com>,
 Christian Brauner <brauner@kernel.org>, Chris Mason <clm@fb.com>,
 Muchun Song <muchun.song@linux.dev>, linux-kernel@vger.kernel.org,
 Minchan Kim <minchan@kernel.org>, Benjamin LaHaise <bcrl@kvack.org>,
 linux-fsdevel@vger.kernel.org, Andrew Morton <akpm@linux-foundation.org>,
 linuxppc-dev@lists.ozlabs.org, linux-btrfs@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

On Mon, Aug 11, 2025 at 04:39:48PM +0200, David Hildenbrand wrote:
> At this point MIGRATEPAGE_SUCCESS is misnamed for all folio users,
> and now that we remove MIGRATEPAGE_UNMAP, it's really the only "success"
> return value that the code uses and expects.
> 
> Let's just get rid of MIGRATEPAGE_SUCCESS completely and just use "0"
> for success.
> 
> Signed-off-by: David Hildenbrand <david@redhat.com>
> ---
>  arch/powerpc/platforms/pseries/cmm.c |  2 +-
>  drivers/misc/vmw_balloon.c           |  4 +--
>  drivers/virtio/virtio_balloon.c      |  2 +-
>  fs/aio.c                             |  2 +-
>  fs/btrfs/inode.c                     |  4 +--
>  fs/hugetlbfs/inode.c                 |  4 +--
>  fs/jfs/jfs_metapage.c                |  8 +++---
>  include/linux/migrate.h              | 10 +------
>  mm/migrate.c                         | 40 +++++++++++++---------------
>  mm/migrate_device.c                  |  2 +-
>  mm/zsmalloc.c                        |  4 +--
>  11 files changed, 36 insertions(+), 46 deletions(-)

Acked-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
