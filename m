Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E0D757203A1
	for <lists+jfs-discussion@lfdr.de>; Fri,  2 Jun 2023 15:43:32 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1q553l-0005ZK-M3;
	Fri, 02 Jun 2023 13:43:18 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <brauner@kernel.org>) id 1q50DH-0003at-T1
 for jfs-discussion@lists.sourceforge.net;
 Fri, 02 Jun 2023 08:32:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=e7tVE8fMn0V/QkY4ggvMHBb108TvARPm1hYCSjPIz1E=; b=YDsy7ohHEWSTaWwQA5mzsjfv1l
 kVl8nfi53OlBDPU4bpl2iOvvqT2bCH2IsY09Lqrp/lc42++LjbeYYYMysuBEhoiNQesJWTb/4wsp2
 /9G0a3iSB08tXZiuDnEn5njponjDpKo4n1tFbX6K66Lg9V0+EmKwcNc3BL9Vfa6sjrYw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=e7tVE8fMn0V/QkY4ggvMHBb108TvARPm1hYCSjPIz1E=; b=Tk2TxhPlr3xUM7V7oSbUx15wCS
 zDEFOv9fFCCNlJma724urifDPJpr8u7HOlgWjetCSZ36hkDfegKzksMbabpeLGzsR7modZ4ZB1OtB
 s5CYgnubPqCWAlxHCrnPgryaCzBqFJATKC8ozUMStkZ6iRl3R23L/+xti3Oll+JNRTMs=;
Received: from dfw.source.kernel.org ([139.178.84.217])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1q50DA-0005T9-U3 for jfs-discussion@lists.sourceforge.net;
 Fri, 02 Jun 2023 08:32:48 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 847B064AF2;
 Fri,  2 Jun 2023 08:32:35 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D0291C433D2;
 Fri,  2 Jun 2023 08:32:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1685694754;
 bh=O7TqdfyAtIN/OKXfWWIpEUScYv0G8D6pOkXTITBOizU=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=VDDDowdlhWAnoUdB2/pDoQMI+SUZ8LQYLHhVh3NXqgCIsxH1BhkHGGQ6rBAsCYCPq
 XdH13ylXGv3eYVnMDRVZHIMMMaiD/poC88theBcvLyJyRdjewdQUUYTEoxSxQuF0v6
 +bvILaER6ZvTtBoZXxXhjy7un1+IVAn79i9QleBZ35nU0Y+VHiKTcy1sqbnTR4w+zJ
 0NXRDGNSEuEvtmIMq/bGye/3cppYA69pjTIYCOoTPfojIVbYJl5avokiy0dG2AOSvs
 r1vhqOiedfWW66O0WcgG0L1lZbPvmkZE227IbdqaxNZ7wLsYtIbaK1DzJftLmodb7h
 CZA5rKYJAkM9w==
From: Christian Brauner <brauner@kernel.org>
To: Kees Cook <keescook@chromium.org>
Date: Fri,  2 Jun 2023 10:32:20 +0200
Message-Id: <20230602-unnahbar-halbmarathon-22e48883e051@brauner>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230204183355.never.877-kees@kernel.org>
References: <20230204183355.never.877-kees@kernel.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1303; i=brauner@kernel.org;
 h=from:subject:message-id; bh=O7TqdfyAtIN/OKXfWWIpEUScYv0G8D6pOkXTITBOizU=;
 b=owGbwMvMwCU28Zj0gdSKO4sYT6slMaRUrjhol/uaefLb1w8TLdJfZ7M42EQUeQh4NcZMN0qZceDs
 lqp5HaUsDGJcDLJiiiwO7Sbhcst5KjYbZWrAzGFlAhnCwMUpABMxZGT473RKqTKhR2uiukm0sEX2pL
 crY7dYGP9LXOc7eXmpdtH7OIZ/alW5LJc3L73861LYFaNGNgUtsUfsaQ5GzlaqnS0q7OWMAA==
X-Developer-Key: i=brauner@kernel.org; a=openpgp;
 fpr=4880B8C9BD0E5106FC070F4F7B3C391EFEA93624
X-Spam-Score: -5.4 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Sat, 04 Feb 2023 10:33:56 -0800, Kees Cook wrote: > To
 avoid confusing the compiler about possible negative sizes, switch > "ssize"
 which can never be negative from int to u32. Seen with GCC 13: > [...] 
 Content analysis details:   (-5.4 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [139.178.84.217 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 -0.2 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1q50DA-0005T9-U3
X-Mailman-Approved-At: Fri, 02 Jun 2023 13:43:17 +0000
Subject: Re: [Jfs-discussion] [PATCH] jfs: Use unsigned variable for length
 calculations
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
Cc: Dave Kleikamp <shaggy@kernel.org>, Christian Brauner <brauner@kernel.org>,
 linux-kernel@vger.kernel.org, linux-hardening@vger.kernel.org,
 "Dr. David Alan Gilbert" <linux@treblig.org>,
 Dave Chinner <dchinner@redhat.com>, jfs-discussion@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

On Sat, 04 Feb 2023 10:33:56 -0800, Kees Cook wrote:
> To avoid confusing the compiler about possible negative sizes, switch
> "ssize" which can never be negative from int to u32.  Seen with GCC 13:
> 
> ../fs/jfs/namei.c: In function 'jfs_symlink': ../include/linux/fortify-string.h:57:33: warning: '__builtin_memcpy' pointer overflow between offset 0 and size [-2147483648, -1]
> [-Warray-bounds=]
>    57 | #define __underlying_memcpy     __builtin_memcpy
>       |                                 ^
> ...
> ../fs/jfs/namei.c:950:17: note: in expansion of macro 'memcpy'
>   950 |                 memcpy(ip->i_link, name, ssize);
>       |                 ^~~~~~
> 
> [...]

Applied to the vfs.misc branch of the vfs/vfs.git tree.
Patches in the vfs.misc branch should appear in linux-next soon.

Please report any outstanding bugs that were missed during review in a
new review to the original patch series allowing us to drop it.

It's encouraged to provide Acked-bys and Reviewed-bys even though the
patch has now been applied. If possible patch trailers will be updated.

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/vfs/vfs.git
branch: vfs.misc

[1/1] jfs: Use unsigned variable for length calculations
      https://git.kernel.org/vfs/vfs/c/2d6e1895d440


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
