Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id CF15A6034E2
	for <lists+jfs-discussion@lfdr.de>; Tue, 18 Oct 2022 23:28:05 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1oku7m-0004Pk-SW;
	Tue, 18 Oct 2022 21:27:46 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <akpm@linux-foundation.org>) id 1oku7l-0004Pd-AH
 for jfs-discussion@lists.sourceforge.net;
 Tue, 18 Oct 2022 21:27:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Mime-Version
 :References:In-Reply-To:Message-Id:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Y/VVBPEArwKkW1iWTaQXLMlvPV++otfO6Y+Qq6NXvTA=; b=huNPn45AesjYiXXCJk+nN1v6ou
 Pt74PlCOXWpA4hO0YzafzizoQhryjn/OPHBdpV5figsgukGJo/xbwcVqis0ah2aKIdqzIR2uNWDSR
 C1BZqYHHLpgH5x2iPuYRMBeQ/X64rxzBfU7ZAqmr+tl/Eyiv9nQy6oNiBoY+5IV9gAhs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Mime-Version:References:
 In-Reply-To:Message-Id:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Y/VVBPEArwKkW1iWTaQXLMlvPV++otfO6Y+Qq6NXvTA=; b=SuZBsNvmbrUqUR+Z5GW95lnirz
 xBBHfBiZbtxM2Qyz93vx41tNpmwD+jmC428ea5esf5ILHKGCdOAXGXyqiEt1NYvHZdt1fx39jkbVN
 EzKLYRaUeMLrYlAG/YJz/NbFIBMUHndNkh29Mc67P2BDObxDM/53tQXPWFUf9VlTwyHw=;
Received: from dfw.source.kernel.org ([139.178.84.217])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1oku7h-008rbQ-GC for jfs-discussion@lists.sourceforge.net;
 Tue, 18 Oct 2022 21:27:45 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 33BD861572;
 Tue, 18 Oct 2022 21:02:38 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5C9ACC433C1;
 Tue, 18 Oct 2022 21:02:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux-foundation.org;
 s=korg; t=1666126957;
 bh=JDhxV9cE13wlutpbfNljUnqD44+JRDKvWdOIX7KOd/s=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=idDLL4RT67Sjajpxw+ttUmOc9YmTfDmZqrqlHXN51XeJ41bzqMmUjKERDU7gPUAYt
 tfRRHEUZ/U+aUqw7/ED82CckMzY5/bN7ukjeWfrynZKOQ5rUavxXyZkdpEQt/s16N/
 GY7U3DckdJVdwsEbUbxKvBTYdDCRJh7IwBbH9L6w=
Date: Tue, 18 Oct 2022 14:02:36 -0700
From: Andrew Morton <akpm@linux-foundation.org>
To: kernel test robot <lkp@intel.com>
Message-Id: <20221018140236.f55b76d77f5b872edf9bfdce@linux-foundation.org>
In-Reply-To: <634eca23.ML3KLI/hjp2jt28w%lkp@intel.com>
References: <634eca23.ML3KLI/hjp2jt28w%lkp@intel.com>
X-Mailer: Sylpheed 3.7.0 (GTK+ 2.24.33; x86_64-redhat-linux-gnu)
Mime-Version: 1.0
X-Spam-Score: -5.2 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Tue,
 18 Oct 2022 23:45:39 +0800 kernel test robot <lkp@intel.com>
 wrote: > tree/branch:
 https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git
 master > branch HEAD: 4ca786ae6681b90b0ec3f4c55c89d12f835f8944 Add linux-next
 specific files for 20221018 > > ... > > [...] 
 Content analysis details:   (-5.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [139.178.84.217 listed in list.dnswl.org]
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: linux-foundation.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1oku7h-008rbQ-GC
Subject: Re: [Jfs-discussion] [linux-next:master] BUILD REGRESSION
 4ca786ae6681b90b0ec3f4c55c89d12f835f8944
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
Cc: jfs-discussion@lists.sourceforge.net, ntfs3@lists.linux.dev,
 Liam Howlett <liam.howlett@oracle.com>, linux-mm@kvack.org,
 linux-ext4@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

On Tue, 18 Oct 2022 23:45:39 +0800 kernel test robot <lkp@intel.com> wrote:

> tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git master
> branch HEAD: 4ca786ae6681b90b0ec3f4c55c89d12f835f8944  Add linux-next specific files for 20221018
> 
> ...
>
> mm/mmap.c:802 __vma_adjust() error: uninitialized symbol 'next_next'.
> 

The code's OK but I guess we should make this warning go away.

--- a/mm/mmap.c~a
+++ a/mm/mmap.c
@@ -618,7 +618,8 @@ int __vma_adjust(struct vm_area_struct *
 	struct vm_area_struct *expand)
 {
 	struct mm_struct *mm = vma->vm_mm;
-	struct vm_area_struct *next_next, *next = find_vma(mm, vma->vm_end);
+	struct vm_area_struct *next_next = NULL;	/* uninit var warning */
+	struct vm_area_struct *next = find_vma(mm, vma->vm_end);
 	struct vm_area_struct *orig_vma = vma;
 	struct address_space *mapping = NULL;
 	struct rb_root_cached *root = NULL;
_




_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
