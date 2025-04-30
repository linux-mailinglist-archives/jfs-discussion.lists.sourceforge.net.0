Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 58812AA5798
	for <lists+jfs-discussion@lfdr.de>; Wed, 30 Apr 2025 23:42:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:Mime-Version:References:In-Reply-To:Message-Id:To:From:Date:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=fn/BsF/a5cJ+aIbPf60tRYsOPHj/QtdX8NP1pvah0vk=; b=kC4ZiKw8t2VIoAI/yHmBaE2W/P
	tm8oDvMPvDvi3yq0Y67uXKcXsy0QT4S11TFibc4zYXSsmhxfB2vdKqOjxM4lOYaaBbmzoqfTxvh8h
	KhpRqRL5gbLczKg/u1r196xiLKMNnThJEBf8A2oOflRJYSCFfBXF45zKg+EosAEJTTSM=;
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1uAFBE-0001Ve-G5;
	Wed, 30 Apr 2025 21:41:24 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <akpm@linux-foundation.org>) id 1uAFBD-0001VY-PV
 for jfs-discussion@lists.sourceforge.net;
 Wed, 30 Apr 2025 21:41:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Mime-Version
 :References:In-Reply-To:Message-Id:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=LN2mXmXsynroXE0asdACVtziUMnqitVFMy5WkFwcVbg=; b=N3/8MO1aB1hKaiUtn2ogCrgVnN
 lQ8kQDeLcpg66yxPtDb94n0+aWiFM5EZGjfnjp7MG9HEeKRhSKxjy+WxRqB54n7Pt5u0UKZ8bYx6H
 HYN0pPvDu54eDCw/MzFDJkETSQ6ZWRBlzUZubjJm1H6aP/DXWMlWequezH9xjb00KF/E=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Mime-Version:References:
 In-Reply-To:Message-Id:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=LN2mXmXsynroXE0asdACVtziUMnqitVFMy5WkFwcVbg=; b=ZFp8ea+bQuIoIHJJNo3NQ3QDKg
 1wcu7xy9vDn/xyJtoydVWv6XGQOc8KGM6AO+sVGdd0ND5NCrDScJxV493asIli9E7PIQiZIHdkGSo
 kzv+mLa6EwlRtyu9c5FIeRgITfu1qrT3cXfgQUa4+J3QnPbY+jwSKlBy0ibQL25t/Q5U=;
Received: from nyc.source.kernel.org ([147.75.193.91])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1uAFAx-0002hD-Vn for jfs-discussion@lists.sourceforge.net;
 Wed, 30 Apr 2025 21:41:23 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by nyc.source.kernel.org (Postfix) with ESMTP id D8DE0A4B86E;
 Wed, 30 Apr 2025 21:16:13 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BF854C4CEE7;
 Wed, 30 Apr 2025 21:21:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux-foundation.org;
 s=korg; t=1746048101;
 bh=D+CfDT9wAoO6bnY9uzXeEDaa8NmhSoGRGgHb17XWCj4=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=gxb9jZ473ZU7zsOxhj3AeB1R1+hcEzaw+WBrOkaV71F/6AYOXIoPnUQAURPyiS0wX
 odbTKvysLOYr/srKd4hBz62+o39XO1dO+g8yJMFAOrMIpK1HMWaqssOPvNM5NGthJK
 wKB0aDHCt0mA1MAk64td4x7vJ6cP1u/s5v+Tm/Tk=
Date: Wed, 30 Apr 2025 14:21:35 -0700
From: Andrew Morton <akpm@linux-foundation.org>
To: Shivank Garg <shivankg@amd.com>
Message-Id: <20250430142135.099ecfa33963f0895b0f2c1d@linux-foundation.org>
In-Reply-To: <20250430100150.279751-1-shivankg@amd.com>
References: <20250430100150.279751-1-shivankg@amd.com>
X-Mailer: Sylpheed 3.7.0 (GTK+ 2.24.33; x86_64-pc-linux-gnu)
Mime-Version: 1.0
X-Spam-Score: -4.7 (----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Wed,
 30 Apr 2025 10:01:49 +0000 Shivank Garg <shivankg@amd.com>
 wrote: > This patch addresses a warning that occurs during memory compaction
 due > to JFS's missing migrate_folio operation. The warning was introduced
 by > commit 7ee3647243e5 ("migrate: Remove call to ->wr [...] 
 Content analysis details:   (-4.7 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [147.75.193.91 listed in bl.score.senderscore.com]
 0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
 The query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [147.75.193.91 listed in sa-accredit.habeas.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [147.75.193.91 listed in list.dnswl.org]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -2.2 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1uAFAx-0002hD-Vn
Subject: Re: [Jfs-discussion] [PATCH V5 0/2] JFS: Implement migrate_folio
 for jfs_metapage_aops
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
Cc: jane.chu@oracle.com, shaggy@kernel.org, wangkefeng.wang@huawei.com,
 david@redhat.com, apopple@nvidia.com, jfs-discussion@lists.sourceforge.net,
 willy@infradead.org, linux-kernel@vger.kernel.org, linux-mm@kvack.org,
 syzbot+8bb6fd945af4e0ad9299@syzkaller.appspotmail.com, donettom@linux.ibm.com,
 ziy@nvidia.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

On Wed, 30 Apr 2025 10:01:49 +0000 Shivank Garg <shivankg@amd.com> wrote:

> This patch addresses a warning that occurs during memory compaction due
> to JFS's missing migrate_folio operation. The warning was introduced by
> commit 7ee3647243e5 ("migrate: Remove call to ->writepage") which added
> explicit warnings when filesystem don't implement migrate_folio.
> 
> The syzbot reported following [1]:
>   jfs_metapage_aops does not implement migrate_folio
>   WARNING: CPU: 1 PID: 5861 at mm/migrate.c:955 fallback_migrate_folio mm/migrate.c:953 [inline]
>   WARNING: CPU: 1 PID: 5861 at mm/migrate.c:955 move_to_new_folio+0x70e/0x840 mm/migrate.c:1007
>   Modules linked in:
>   CPU: 1 UID: 0 PID: 5861 Comm: syz-executor280 Not tainted 6.15.0-rc1-next-20250411-syzkaller #0 PREEMPT(full) 
>   Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 02/12/2025
>   RIP: 0010:fallback_migrate_folio mm/migrate.c:953 [inline]
>   RIP: 0010:move_to_new_folio+0x70e/0x840 mm/migrate.c:1007
> 
> To fix this issue, this series implement metapage_migrate_folio() for JFS
> which handles both single and multiple metapages per page configurations.

Thanks, I'll add these to mm.git for some testing while discussion
proceeds.

Do we think these patches should be backported into -stable kernels?

Or maybe we should simply remove the warning from -stable kernels then
re-add it when we're confident that all in-tree filesystems are good?


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
