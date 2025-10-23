Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D4380C129F4
	for <lists+jfs-discussion@lfdr.de>; Tue, 28 Oct 2025 03:04:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:To:Message-Id:MIME-Version:Date:Sender:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=UtR4/zNXTHD6kSdDaPcEQPwfWNF+PxF8mfU5upFXtLY=; b=RWrOjxtvP6EzJ26Kf1Jw0/sv50
	W8t+5UZ1ZLGSd4DDqR23KRg0Q3oHpuD2X/UipyavExBpPOt74YSTjqgkE2ogXmwbDiI4ayLNheWi0
	QGH8vPIhGj9Tep40TJ/U7BxzTPffrl6gIbUZEbB+Twp0V5oipnu8tk8VZ5qJoViBCsvg=;
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1vDZ2D-0002wM-Kn;
	Tue, 28 Oct 2025 02:02:05 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <nathan@kernel.org>) id 1vBzHw-0004GY-4h
 for jfs-discussion@lists.sourceforge.net;
 Thu, 23 Oct 2025 17:39:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Cc:To:Message-Id:Content-Transfer-Encoding:
 Content-Type:MIME-Version:Subject:Date:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=4GoecAreocvNeBYjaWRpXOEg12ISVvro5gQvAOGfn3U=; b=f9QZrW/si6PUNybib0x95rff52
 SSDr/gEVDvmljokyMMPLHxatKgADzTt6JIuPh11plX1M4iEY4XC+4Ns+zbvpsnfl5BnnEWJInLALA
 laSzocmZ8334HKdpCcoekhniUry1iZfF2d1PoL+DbP/ZFVYRC2OnMtInGTmvAEEDNV+8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Cc:To:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:
 Subject:Date:From:Sender:Reply-To:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=4GoecAreocvNeBYjaWRpXOEg12ISVvro5gQvAOGfn3U=; b=C
 3zNZRxInn+MX4ApTg7j9Bb+h45ZCycn/+IduQxiF1D5xsQrqpWlNSb42jsU52JUqx63w74//sE2WO
 BW4C1LcIg/XXXxDcx89pyjY5zIUFyriKFfZjkFJC4krQlijPdSCXK9vFqHYyEznQqSJJebQhM1c9j
 vfr1YipNf0eME2b4=;
Received: from tor.source.kernel.org ([172.105.4.254])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1vBzHv-0001OM-GI for jfs-discussion@lists.sourceforge.net;
 Thu, 23 Oct 2025 17:39:48 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id BF59561169;
 Thu, 23 Oct 2025 17:39:36 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3DCB8C4CEE7;
 Thu, 23 Oct 2025 17:39:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1761241176;
 bh=y8FcQl/tdhUR9emAymQCDVyljD2NFGR2+Z65Qge1MJc=;
 h=From:Date:Subject:To:Cc:From;
 b=RLRAGeN/43K4pTReEel9mg67U5oa02cfOnXqw+capCfwW6lJ6n9KErRBKgq8Q/p5C
 3Qzc+SDtfkn9cM+5ChQM80BwLuYbpeqXaiCk6Goav2JvIjnC+oAatXgJUUMV6edEg9
 p9Cok6IJs59JF+nEy6vFIEp/9DB2xjVlPZxERM0FrhQQ6skk2AyoP0C5Pul7QcPYzF
 0TWkbXXqbBkjlSGSTuMsZ3z/OHswrAfLyFdA9oUKrNRoeFQDsqEditk/5zA/i8JPt1
 t2OtXeXNGUXefVAziXfeiR7w8zuSBpqCiCDmYPcN3yR8VwtbSww+52bSOQAyN/2Td3
 jqdpwmPpnCPNg==
Date: Thu, 23 Oct 2025 10:38:50 -0700
MIME-Version: 1.0
Message-Id: <20251023-jfs-fix-conflict-with-clang-ms-ext-v1-1-e219d59a1e68@kernel.org>
X-B4-Tracking: v=1; b=H4sIAAAAAAAC/x2N0QrCMBAEf6XcswtppEj8FfEhphd7UlPJBS2U/
 nsPHwd2djZSrsJK126jyl9RWYpBf+ooTbE8GTIak3d+6J0/45UVWVakpeRZUsNP2oQ02xZvBa8
 NMfoxuEtw4RHIjj6VzfhHbvd9PwBu+OaEdAAAAA==
X-Change-ID: 20251023-jfs-fix-conflict-with-clang-ms-ext-aa2d907909b9
To: Nicolas Schier <nsc@kernel.org>, 
 Linus Torvalds <torvalds@linux-foundation.org>, 
 Rasmus Villemoes <linux@rasmusvillemoes.dk>
X-Mailer: b4 0.15-dev
X-Developer-Signature: v=1; a=openpgp-sha256; l=2945; i=nathan@kernel.org;
 h=from:subject:message-id; bh=y8FcQl/tdhUR9emAymQCDVyljD2NFGR2+Z65Qge1MJc=;
 b=owGbwMvMwCUmm602sfCA1DTG02pJDBm/MvwiHc7rTVoxw1ps7+wnKXdD07weVZzI3HP0EN/vg
 09MmeJdO0pZGMS4GGTFFFmqH6seNzScc5bxxqlJMHNYmUCGMHBxCsBEGo4xMkxZuiX1SgiPteei
 3+UtClKmlz5MWP2jKbPZtks9rCLpz0RGhp2Lr259fKWa+eXrf4KZLw+p3DiyRnRpbdM0iWrbnY8
 +rmQAAA==
X-Developer-Key: i=nathan@kernel.org; a=openpgp;
 fpr=2437CB76E544CB6AB3D9DFD399739260CB6CB716
X-Spam-Score: 1.8 (+)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: After commit 778740ee2d00 ("Kbuild: enable -fms-extensions"),
 building fs/jfs fails with clang: In file included from
 fs/jfs/jfs_unicode.c:8:
 fs/jfs/jfs_incore.h:86:13: error: type name does not allow function specifier
 to be specified 86 | unchar _inline[128]; | ^ fs/jfs/jfs_incore.h:86:20:
 er [...] Content analysis details:   (1.8 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 2.0 URI_TRY_3LD            "Try it" URI, suspicious hostname
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1vBzHv-0001OM-GI
X-Mailman-Approved-At: Tue, 28 Oct 2025 02:02:00 +0000
Subject: [Jfs-discussion] [PATCH] jfs: Rename _inline to avoid conflict with
 clang's '-fms-extensions'
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
Cc: jfs-discussion@lists.sourceforge.net, llvm@lists.linux.dev,
 linux-kernel@vger.kernel.org, Nathan Chancellor <nathan@kernel.org>,
 Bill Wendling <morbo@google.com>, Justin Stitt <justinstitt@google.com>,
 Nick Desaulniers <nick.desaulniers+lkml@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

After commit 778740ee2d00 ("Kbuild: enable -fms-extensions"), building
fs/jfs fails with clang:

  In file included from fs/jfs/jfs_unicode.c:8:
  fs/jfs/jfs_incore.h:86:13: error: type name does not allow function specifier to be specified
     86 |                                         unchar _inline[128];
        |                                                ^
  fs/jfs/jfs_incore.h:86:20: error: expected member name or ';' after declaration specifiers
     86 |                                         unchar _inline[128];
        |                                         ~~~~~~~~~~~~~~^

'-fms-extensions' in clang enables several other Microsoft specific
keywords such as _inline [1], presumably for compatibility with MSVC, as
Microsoft's documentation [2] mentions:

  For compatibility with previous versions, _inline and _forceinline are
  synonyms for __inline and __forceinline, respectively

Rename the _inline array in 'struct jfs_inode_info' to _inline_sym to
avoid this conflict, which is not a large workaround as this member is
only ever referred to via the i_inline macro.

Fixes: 778740ee2d00 ("Kbuild: enable -fms-extensions")
Link: https://github.com/llvm/llvm-project/blob/249883d0c5883996bed038cd82a8999f342994c9/clang/include/clang/Basic/TokenKinds.def#L744-L79 [1]
Link: https://learn.microsoft.com/en-us/cpp/c-language/inline-functions [2]
Acked-by: Dave Kleikamp <dave.kleikamp@oracle.com>
Signed-off-by: Nathan Chancellor <nathan@kernel.org>
---
I will stuff this into kbuild-next by Saturday morning UTC unless
Nicolas is able to take it sooner to ensure it makes the Monday -next
release.
---
 fs/jfs/jfs_incore.h | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

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
 

---
base-commit: ac1280211e1c41704c756fd1bc5512f92010b3f0
change-id: 20251023-jfs-fix-conflict-with-clang-ms-ext-aa2d907909b9

Best regards,
--  
Nathan Chancellor <nathan@kernel.org>



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
