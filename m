Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DD89C129F8
	for <lists+jfs-discussion@lfdr.de>; Tue, 28 Oct 2025 03:04:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:References:
	Message-ID:To:Date:Sender:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=1UulpXwHmn9IftPeMkanjoTMMPpV6daOrG8O8avZveU=; b=k1LDIPKxS4ELNHDF/n1Bc/a1wy
	ZFd1LOxwIQqqAxWu4/UzJ+dwpfkqH030uGRMh76Jm28zWwzBlBBaCqwgBZwUWYrUR5cRxyUL5tWaY
	YEM6Hs/tFxcdsc9wMAyBobd6/3d85zCLtnoLY0GdJ0Z8P1IJfuQfCmBJEQ0y64Qdmhe8=;
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1vDZ2A-0002vV-LU;
	Tue, 28 Oct 2025 02:02:02 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <nathan@kernel.org>) id 1vBuci-00085p-KB
 for jfs-discussion@lists.sourceforge.net;
 Thu, 23 Oct 2025 12:40:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=4MTH2VsnjvYA9JHr71oYHa9aTOp34ZEy5OH9h4QDyZ4=; b=H4a4THy7J5Ksn0u72hfIQ4nMi+
 mt1VmSTMDPq3CxARNTT4GMv+A9O1SnTfG7760KTu52VLQtVujOheqGFqJph/73+l6meZbT73TRhGX
 sWMhKTBmVf24jaH/W4GiGqEcmoOXgiv0xcM5UU8CkiXuk7fWAc0v9zap/C0U6KfYRCWY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=4MTH2VsnjvYA9JHr71oYHa9aTOp34ZEy5OH9h4QDyZ4=; b=BUWllnVnIMcrulj4EjxwGIp/YM
 Rm+9nJtQ1odQjHMhTr6HLGK0Eu48Usl6O2Nagr6sLAHNjx/NiwbGa72u015ZoVdMrosTW5r95EXd1
 stybUwo88hdnPxS1fKjH65ugpX+0x+WPFXqv7StL0PZQQZNbr7rj3umyJe/NCyw41jzg=;
Received: from tor.source.kernel.org ([172.105.4.254])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1vBuci-0000qi-QD for jfs-discussion@lists.sourceforge.net;
 Thu, 23 Oct 2025 12:40:57 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id 2654C6061A;
 Thu, 23 Oct 2025 12:40:46 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 14AEAC4CEE7;
 Thu, 23 Oct 2025 12:40:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1761223245;
 bh=OwgX4A4nUsjXLvlUNNji3awVIq48IsYKIpns6jEsaF0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=eCn7pzAXwHtLrzaa/YhuJfPNCVP6Pnu/nAAMiKfwQSsv06J6Jd2HXehsvFVS0r76s
 n6zNsF/60LjlqGkwHg8F/NO27HDRdVEzaH11spxxsB37a1jSubPqFVvvvbfxweF6v8
 ngSlwg3RzgdGV4HpUc19eq0cbF5y7EClQHeDC/bX9ORGYQ8lP6Z7J1+KgaSt0I5y6k
 Lgc6mbCOQTBAfdpl1jwJNKX47OQF6MaRwszTh9uUw8aJsQiOH2g+G51qMIsxCnOUw6
 pssOa5jT4DoTQJFtTNSuk9D4EExRi1ZOKqNFAId7rDtgSzF7YUZUsbBO8QiyirLKRw
 a3fly7zNWieag==
Date: Thu, 23 Oct 2025 14:40:41 +0200
To: Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Dave Kleikamp <shaggy@kernel.org>
Message-ID: <20251023124041.GA739226@ax162>
References: <20251020142228.1819871-1-linux@rasmusvillemoes.dk>
 <20251020142228.1819871-2-linux@rasmusvillemoes.dk>
 <20251022161505.GA1226098@ax162>
 <CAKwiHFiMAm-DX3aERH_F1UooiM1YUiMaax51exhRg2=1ND2VCw@mail.gmail.com>
 <20251022211133.GA2063489@ax162>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20251022211133.GA2063489@ax162>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Wed, Oct 22, 2025 at 11:11:38PM +0200, Nathan Chancellor
 wrote: ... > > > > +# Allow including a tagged struct or union anonymously
 in another struct/union. > > > > +KBUILD_CFLAGS += -fms-extension [...] 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1vBuci-0000qi-QD
X-Mailman-Approved-At: Tue, 28 Oct 2025 02:02:00 +0000
Subject: Re: [Jfs-discussion] [PATCH 1/2] Kbuild: enable -fms-extensions
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
From: Nathan Chancellor via Jfs-discussion
 <jfs-discussion@lists.sourceforge.net>
Reply-To: Nathan Chancellor <nathan@kernel.org>
Cc: David Sterba <dsterba@suse.com>, jfs-discussion@lists.sourceforge.net,
 linux-kbuild@vger.kernel.org, linux-btrfs@vger.kernel.org,
 Nick Desaulniers <nick.desaulniers+lkml@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

On Wed, Oct 22, 2025 at 11:11:38PM +0200, Nathan Chancellor wrote:
...
> > > > +# Allow including a tagged struct or union anonymously in another struct/union.
> > > > +KBUILD_CFLAGS += -fms-extensions
...
> I have tentatively applied this to kbuild-next so that it can spend most
> of the cycle in -next to try and catch all potential problems.

One side effect that has been found in my testing so far is clang's
'-fms-extensions' turns '_inline' into a keyword, which breaks fs/jfs:

  In file included from fs/jfs/jfs_unicode.c:8:
  fs/jfs/jfs_incore.h:86:13: error: type name does not allow function specifier to be specified
     86 |                                         unchar _inline[128];
        |                                                ^
  fs/jfs/jfs_incore.h:86:20: error: expected member name or ';' after declaration specifiers
     86 |                                         unchar _inline[128];
        |                                         ~~~~~~~~~~~~~~^

There appear to be other similar keywords (ones with KEYMS in the linke
below) but my personal distribution configuration does not show any
instances in the build where they matter (I did not test allmodconfig
yet).

  https://github.com/llvm/llvm-project/blob/249883d0c5883996bed038cd82a8999f342994c9/clang/include/clang/Basic/TokenKinds.def#L744-L794

Something like this is all it takes to resolve the issue, so I will send
a patch for formal review/acking but I wanted to bring it up ahead of
time in case this is unpalpable and we should throw these changes out of
-next instead of forward fixing.

Cheers,
Nathan

diff --git a/fs/jfs/jfs_incore.h b/fs/jfs/jfs_incore.h
index 10934f9a11be..5aaafedb8fbc 100644
--- a/fs/jfs/jfs_incore.h
+++ b/fs/jfs/jfs_incore.h
@@ -76,14 +76,14 @@ struct jfs_inode_info {
 		struct {
 			unchar _unused[16];	/* 16: */
 			dxd_t _dxd;		/* 16: */
-			/* _inline may overflow into _inline_ea when needed */
+			/* _inline_sym may overflow into _inline_ea when needed */
 			/* _inline_ea may overlay the last part of
 			 * file._xtroot if maxentry = XTROOTINITSLOT
 			 */
 			union {
 				struct {
 					/* 128: inline symlink */
-					unchar _inline[128];
+					unchar _inline_sym[128];
 					/* 128: inline extended attr */
 					unchar _inline_ea[128];
 				};
@@ -101,7 +101,7 @@ struct jfs_inode_info {
 #define i_imap u.file._imap
 #define i_dirtable u.dir._table
 #define i_dtroot u.dir._dtroot
-#define i_inline u.link._inline
+#define i_inline u.link._inline_sym
 #define i_inline_ea u.link._inline_ea
 #define i_inline_all u.link._inline_all
 


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
