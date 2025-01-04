Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 58475A01382
	for <lists+jfs-discussion@lfdr.de>; Sat,  4 Jan 2025 10:11:59 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1tU0C0-00089Z-Ur;
	Sat, 04 Jan 2025 09:11:36 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <brauner@kernel.org>) id 1tU0Bz-00089R-Hj
 for jfs-discussion@lists.sourceforge.net;
 Sat, 04 Jan 2025 09:11:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=h6y6k9wG9YAAoR5VcrC0uuXPmfq7bHObXtpT6NQt/bg=; b=QUpftcHgBzlBjHIxli65hO7OGY
 W06Wpn6b5hqd+HaO/Vgj5nDsnB7n32R8zGbWFTKYEITczQKos0/4FBl+jelpKlNC/ZzdtmaAIGE9Q
 srirN+OxYGQLghc07kheFeWkau2POmEJPGJZSRGpuHr+QXZVh39bn3EPdQCh9hFlDQ/k=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=h6y6k9wG9YAAoR5VcrC0uuXPmfq7bHObXtpT6NQt/bg=; b=TIj2nBWMHIsmqAIijYmo8X6ga1
 hmMAuW+XrMhh/3loLvZZ6rdtZd2qXI649k14zCEx5J5Ge0tZ/+itQvnMiVuR7i6a8UYtuJp7MO97L
 gFmEjNmU5xmRRADm0FtA9mVzqakC4n78nGquMP15wV9ENWwVbcmgFY8TfGdOIrbwfMuE=;
Received: from dfw.source.kernel.org ([139.178.84.217])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1tU0By-0002of-Vk for jfs-discussion@lists.sourceforge.net;
 Sat, 04 Jan 2025 09:11:35 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 41EFE5C478B;
 Sat,  4 Jan 2025 09:10:43 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BD9FDC4CED1;
 Sat,  4 Jan 2025 09:11:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1735981884;
 bh=F5hxa229mm2emWXssEaQjuuhAwKyEgCJ8aNxtfV6GNY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=rrQI4ruhBAPRMDyHEPdHYUctjVWuU6b4FKk7S4fzqdIdLy10nQ5CY3odyWTWN22to
 ZJzhFTY6CVwgI7IucjmyXMxIRwosNxIG69PcHYoyyosrk+Y82f2hiGkjmEIl79Yv3O
 DV2DKnLeFNJJ25RcfoxstKqj1rxb9YpkZCtBxy5jMpBCWyeC46H8Yl1HkcsMuf7nsK
 OFNlfJ3Xkr/yFwgmKK60e4OaMxG3ikKftFjZOta69tSOGjPfFPQYB4TPHuwv32pV4Q
 s3hPpRJy6vkndY/a78EON8N7nwRKSLQIbh/BYUW7O59rSUbO9G8QDsOdk90fFQ79aZ
 8ivw17zc5ckng==
Date: Sat, 4 Jan 2025 10:11:19 +0100
To: syzbot <syzbot+5b9d613904b2f185f2fe@syzkaller.appspotmail.com>
Message-ID: <20250104-vokabel-nimmersatt-8534deaf69ff@brauner>
References: <676a3d1b.050a0220.2f3838.014f.GAE@google.com>
 <677030ff.050a0220.2f3838.0499.GAE@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <677030ff.050a0220.2f3838.0499.GAE@google.com>
X-Spam-Score: -4.9 (----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Sat, Dec 28, 2024 at 09:10:23AM -0800, syzbot wrote: >
 syzbot has found a reproducer for the following issue on: > > HEAD commit:
 8155b4ef3466 Add linux-next specific files for 20241220 This is already fixed
 in -next. Please report if this happens again. 
 Content analysis details:   (-4.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 2.5 SORTED_RECIPS          Recipient list is sorted by address
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
 The query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [139.178.84.217 listed in sa-accredit.habeas.com]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [139.178.84.217 listed in bl.score.senderscore.com]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [139.178.84.217 listed in list.dnswl.org]
 -2.2 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1tU0By-0002of-Vk
Subject: Re: [Jfs-discussion] [syzbot] [jfs?] [nilfs?] WARNING in
 mnt_ns_release
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
Cc: shaggy@kernel.org, jfs-discussion@lists.sourceforge.net,
 linux-nilfs@vger.kernel.org, jack@suse.cz, syzkaller-bugs@googlegroups.com,
 linux-kernel@vger.kernel.org, viro@zeniv.linux.org.uk,
 linux-fsdevel@vger.kernel.org, konishi.ryusuke@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

On Sat, Dec 28, 2024 at 09:10:23AM -0800, syzbot wrote:
> syzbot has found a reproducer for the following issue on:
> 
> HEAD commit:    8155b4ef3466 Add linux-next specific files for 20241220

This is already fixed in -next. Please report if this happens again.


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
