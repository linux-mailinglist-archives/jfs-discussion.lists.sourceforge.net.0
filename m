Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 390C2987FC1
	for <lists+jfs-discussion@lfdr.de>; Fri, 27 Sep 2024 09:50:37 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1su5k1-00016n-J6;
	Fri, 27 Sep 2024 07:50:18 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <brauner@kernel.org>) id 1su5k0-00016h-Sl
 for jfs-discussion@lists.sourceforge.net;
 Fri, 27 Sep 2024 07:50:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=RMJEySq1glmqluIu/XMm0WNpVhbUeDh9TIGnOPSUSO0=; b=faOHGE0DEIX34s5nHGa3EgShY1
 Jp8/YmAukORxZKUD6iyJort4+1oHl01AVSsbf1/G6zV3DEVCczDnotZi0g91va7TL06pGFSdTYZBU
 GtRYZ/xT7zhkf8APNT6RzvGnlj5fLeaq0cOqC6LExZuntAc7lm9GNDJ0BdBiXByDc/nM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=RMJEySq1glmqluIu/XMm0WNpVhbUeDh9TIGnOPSUSO0=; b=QguiGHyKV9onLi7rnH2cQFpps3
 pJc0E1vJtwLbtoFj5ojGaEwUvhk0vIB0IfjN+pAFham2O2rZv79B9VN/p3KvMfuJ68kJGdlx0/7e1
 qeYJNrJE3IyxXeVw2m++h4h4Y8nb9uIs/PesmLWNNCnSTIYXOy0poKXLagLJUdfgLlBo=;
Received: from nyc.source.kernel.org ([147.75.193.91])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1su5k0-000718-U0 for jfs-discussion@lists.sourceforge.net;
 Fri, 27 Sep 2024 07:50:17 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by nyc.source.kernel.org (Postfix) with ESMTP id ECB6EA452B2;
 Fri, 27 Sep 2024 07:49:57 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A5044C4CEC4;
 Fri, 27 Sep 2024 07:50:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1727423405;
 bh=GFSFBAqL3kSdytLbjB9epIWszKbtANAeBC/bywZkgTM=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=ujkdbZ1gtCe7mub8T3EoUkkwfwL9Zsy/8hOn/n/G31x3YctTzyGcBNQOls6/c/1Kf
 Wl9BHSqEtbqR+YRZEH/ogaSpswKtDcGPJhfe0YGe2X/czXD5kGR33162wmfe5C2oGM
 6pYe+1p00Tu3zBo3h73/DFX+PpXa1jLBRYPLskg3KElrZ9I18s0yQA8P1tkTXvGvl/
 mcpyKGUCPF2EDK5Q26i8J6RBC651TpwhtKxd8HEwTZGokEjP87bVK0fAHjaIEPiHFO
 E19eNNin7zVUWHJFXtfwy6eEdLgFHHI2p3EyFR1mvCOpE8FclmrxtQajcuVmvLo74y
 uNWiLACZdL9Mw==
To: jfs-discussion@lists.sourceforge.net,
	Eric Sandeen <sandeen@redhat.com>
Date: Fri, 27 Sep 2024 09:49:58 +0200
Message-ID: <20240927-gefilde-kindisch-33374312be90@brauner>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240926171947.682881-1-sandeen@redhat.com>
References: <20240926171947.682881-1-sandeen@redhat.com>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=993; i=brauner@kernel.org;
 h=from:subject:message-id; bh=GFSFBAqL3kSdytLbjB9epIWszKbtANAeBC/bywZkgTM=;
 b=owGbwMvMwCU28Zj0gdSKO4sYT6slMaR9S17JeuHpclfJH7JGzJONVxsoqU2NZRA+b3du1m2Pn
 5Nljv771lHKwiDGxSArpsji0G4SLrecp2KzUaYGzBxWJpAhDFycAjAR1ykM/wOPsovNXHL5peOH
 N+Hctbv3ax/l/mP86h3b5q9bMw5fljdi+O/ozDXpjZzxl/AZzQ5TbN0PKrbHXl59fOLCi/9Z9z0
 8aMIFAA==
X-Developer-Key: i=brauner@kernel.org; a=openpgp;
 fpr=4880B8C9BD0E5106FC070F4F7B3C391EFEA93624
X-Spam-Score: -0.3 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Thu, 26 Sep 2024 12:19:46 -0500, Eric Sandeen wrote: >
 Convert the jfs filesystem to use the new mount API. > Tested by comparing
 random mount & remount options before and after > the change. > > 
 Content analysis details:   (-0.3 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1su5k0-000718-U0
Subject: Re: [Jfs-discussion] [PATCH] jfs: convert jfs to use the new mount
 api
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
Cc: shaggy@kernel.org, Christian Brauner <brauner@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

On Thu, 26 Sep 2024 12:19:46 -0500, Eric Sandeen wrote:
> Convert the jfs filesystem to use the new mount API.
> Tested by comparing random mount & remount options before and after
> the change.
> 
> 

Applied to the vfs.mount.api.v6.13 branch of the vfs/vfs.git tree.
Patches in the vfs.mount.api.v6.13 branch should appear in linux-next soon.

Please report any outstanding bugs that were missed during review in a
new review to the original patch series allowing us to drop it.

It's encouraged to provide Acked-bys and Reviewed-bys even though the
patch has now been applied. If possible patch trailers will be updated.

Note that commit hashes shown below are subject to change due to rebase,
trailer updates or similar. If in doubt, please check the listed branch.

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/vfs/vfs.git
branch: vfs.mount.api.v6.13

[1/1] jfs: convert jfs to use the new mount api
      https://git.kernel.org/vfs/vfs/c/656b228435a1


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
