Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C02346F8308
	for <lists+jfs-discussion@lfdr.de>; Fri,  5 May 2023 14:34:06 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1puud6-0006ZZ-TS;
	Fri, 05 May 2023 12:33:45 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <gregkh@linuxfoundation.org>) id 1puud5-0006ZT-KG
 for jfs-discussion@lists.sourceforge.net;
 Fri, 05 May 2023 12:33:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=5a5rsH58sEC4CXuUJiCZKlUr4ldCmXYzJ2KIaF2MJbo=; b=nUcyL7KKoyV7ly3jQPS8/Uyv6C
 7WvQPvpHX5xuv91yXdegl2KReHWl9Z+yZcvelh+b0fJwS0EUmq/aZGrfXNbVwBHokmxi/QkGpmaZN
 uh86JnDfNOw7uiI0N5+uJa3zMyCO82mXdCYRN85rl6wTp1P4H5mYXKtT1OFPPCTIZqy0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=5a5rsH58sEC4CXuUJiCZKlUr4ldCmXYzJ2KIaF2MJbo=; b=AmXLgZCpeW3xYyQdQx6EwBacaB
 Iq6zqfbXp02Wm71Mhrbeqx0Su1nJ/4punPwAfh6bCsoXo9fwogEj2Sv9UYA3omVmkJrcQfXHKxVsk
 4ezLMM1uJAPP9fMrckOTMoDuIlgDr9mYUPsGW3YsjyeXNrSLE2796ICq60F/CdFvpAcc=;
Received: from dfw.source.kernel.org ([139.178.84.217])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1puud2-0004KB-1I for jfs-discussion@lists.sourceforge.net;
 Fri, 05 May 2023 12:33:43 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id A50056121A;
 Fri,  5 May 2023 12:33:34 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C3DC2C433EF;
 Fri,  5 May 2023 12:33:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1683290014;
 bh=+a0NDfLpG5YPyImRcVvsVNMoUkCbK2ZuZXYKMyy+FI4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=JuppAMDWi4XdjZPYreNQpGwIqtMoMF7YA6HDxySfwVu18Lr2mORwLTdkLWL7G84E8
 B9VM/xasYrPr441ZIZlxmrTAKTXXUyeXimCw0gGK7cNU2Wb6tcGFJRyzNAgFxAgX/H
 QW6/t20ko47i6m2eKQKt4dHJViznP86vCjGM6x+A=
Date: Fri, 5 May 2023 21:33:32 +0900
From: Greg KH <gregkh@linuxfoundation.org>
To: "wonguk.lee" <wonguk.lee1023@gmail.com>
Message-ID: <2023050555-vacate-playroom-7402@gregkh>
References: <ZFRZ6UwxnrxLf6ZX@ubuntu22-virtual-machine.localdomain>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ZFRZ6UwxnrxLf6ZX@ubuntu22-virtual-machine.localdomain>
X-Spam-Score: -5.4 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Fri, May 05, 2023 at 10:20:41AM +0900, wonguk.lee wrote:
 > Signed-off-by: wonguk.lee <wonguk.lee1023@gmail.com> Hi, This is the friendly
 patch-bot of Greg Kroah-Hartman. You have sent him a patch that has triggered
 this response. He used to manually respond to these common problems, but
 in order to save his sanity [...] 
 Content analysis details:   (-5.4 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [139.178.84.217 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 -0.2 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1puud2-0004KB-1I
Subject: Re: [Jfs-discussion] [PATCH] fs: jfs: (trivial) Fix typo in
 dbInitTree function
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
Cc: shaggy@kernel.org, jfs-discussion@lists.sourceforge.net,
 linux-kernel-mentees@lists.linuxfoundation.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

On Fri, May 05, 2023 at 10:20:41AM +0900, wonguk.lee wrote:
> Signed-off-by: wonguk.lee <wonguk.lee1023@gmail.com>

Hi,

This is the friendly patch-bot of Greg Kroah-Hartman.  You have sent him
a patch that has triggered this response.  He used to manually respond
to these common problems, but in order to save his sanity (he kept
writing the same thing over and over, yet to different people), I was
created.  Hopefully you will not take offence and will fix the problem
in your patch and resubmit it so that it can be accepted into the Linux
kernel tree.

You are receiving this message because of the following common error(s)
as indicated below:


- You did not specify a description of why the patch is needed, or
  possibly, any description at all, in the email body.  Please read the
  section entitled "The canonical patch format" in the kernel file,
  Documentation/process/submitting-patches.rst for what is needed in
  order to properly describe the change.

- You did not write a descriptive Subject: for the patch, allowing Greg,
  and everyone else, to know what this patch is all about.  Please read
  the section entitled "The canonical patch format" in the kernel file,
  Documentation/process/submitting-patches.rst for what a proper
  Subject: line should look like.

- It looks like you did not use your "real" name for the patch on either
  the Signed-off-by: line, or the From: line (both of which have to
  match).  Please read the kernel file,
  Documentation/process/submitting-patches.rst for how to do this
  correctly.

If you wish to discuss this problem further, or you have questions about
how to resolve this issue, please feel free to respond to this email and
Greg will reply once he has dug out from the pending patches received
from other developers.

thanks,

greg k-h's patch email bot


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
