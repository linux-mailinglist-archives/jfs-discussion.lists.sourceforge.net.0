Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (unknown [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 273723E4699
	for <lists+jfs-discussion@lfdr.de>; Mon,  9 Aug 2021 15:28:24 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1mD5Jh-0004cJ-Gs; Mon, 09 Aug 2021 13:27:45 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <pali@kernel.org>)
 id 1mClcG-0003P6-UF; Sun, 08 Aug 2021 16:25:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=z/LLOxjJ4WRf2qoaTtoBFeFN1INyerXXNPWN1cWCPrU=; b=SQYS5Se36OEVGIygJJO0BWMzmj
 HWCdBAjOL7R1o1/FFeOAdVAYDwtdDGyrYfiCmjlWpt797glYYlAB7VAC7eWVy/tx+jMe2uimPxrZv
 inlmQj3cozk4o3qKxlLN/YmukLHtXizjYqp0HYsbS3qpRHRGmAxYytd+GBSqcpFuo2QQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=z/LLOxjJ4WRf2qoaTtoBFeFN1INyerXXNPWN1cWCPrU=; b=cxgTkDJVvqiS4osi6UC3Ydpj+j
 T05LJe/V9qzAa2YEk7/0+y/QKw9RMebAXrQ3Ar+E8tJ/pq9CAdG0tnpqbyO1ANECVoUKvnx08Dp16
 723EUlMlp2uSRtZ2HtJxpnuKmL7Y1SJC+i3sVLawoT6RXn3rWMqsm/AHDQEfjTmJPDJs=;
Received: from mail.kernel.org ([198.145.29.99])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mClcD-0001wN-1z; Sun, 08 Aug 2021 16:25:36 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id C35526108B;
 Sun,  8 Aug 2021 16:25:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1628439916;
 bh=eQPs0LWQBuazOmvJGjLKlWpE+0zkH3dOJ2O1oXtwFzM=;
 h=From:To:Subject:Date:In-Reply-To:References:From;
 b=rBnMdtsDqCiZ07/1G7BoaxjN9KW9K9BBqT4CeO2Jf4bRJ3o+HSXXEE/EU5Bok9tIx
 QsYTZG/e7lcYWC8p4IGZtSEuW2SyNi8HaNiv9qC0nhtB3m29MswTxgB1o7IQMepx7H
 claKQxNQrKzpLoHC5hA0Mfd60A5af//SEHJXwBfa0Rb3gd0BuhdNK6HNXXGWmhNqhy
 LM6o0H+o1weTWOlRI6iZCvyW4F5AY+xmD6EazJhHOeS5Q1N+xbHdu3jju/ycLftuTy
 XUZs6RgaRZr4mBNbUzcf2ufuuN2zKd4qy6JSnC0ll8wkEegoGKB7DkPSqrJuv/Iymn
 4zJcvXv2tH13Q==
Received: by pali.im (Postfix)
 id 841DD13DC; Sun,  8 Aug 2021 18:25:16 +0200 (CEST)
From: =?UTF-8?q?Pali=20Roh=C3=A1r?= <pali@kernel.org>
To: linux-fsdevel@vger.kernel.org, linux-ntfs-dev@lists.sourceforge.net,
 linux-cifs@vger.kernel.org, jfs-discussion@lists.sourceforge.net,
 linux-kernel@vger.kernel.org, Alexander Viro <viro@zeniv.linux.org.uk>,
 Jan Kara <jack@suse.cz>, OGAWA Hirofumi <hirofumi@mail.parknet.co.jp>,
 "Theodore Y . Ts'o" <tytso@mit.edu>,
 Luis de Bethencourt <luisbg@kernel.org>,
 Salah Triki <salah.triki@gmail.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 Dave Kleikamp <shaggy@kernel.org>, Anton Altaparmakov <anton@tuxera.com>,
 Pavel Machek <pavel@ucw.cz>,
 =?UTF-8?q?Marek=20Beh=C3=BAn?= <marek.behun@nic.cz>,
 Christoph Hellwig <hch@infradead.org>
Date: Sun,  8 Aug 2021 18:24:41 +0200
Message-Id: <20210808162453.1653-9-pali@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210808162453.1653-1-pali@kernel.org>
References: <20210808162453.1653-1-pali@kernel.org>
MIME-Version: 1.0
X-Spam-Score: -0.8 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1mClcD-0001wN-1z
X-Mailman-Approved-At: Mon, 09 Aug 2021 13:27:40 +0000
Subject: [Jfs-discussion] [RFC PATCH 08/20] befs: Rename enum value
 Opt_charset to Opt_iocharset to match mount option
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

TW91bnQgb3B0aW9uIGlzIG5hbWVkIGlvY2hhcnNldD0gYW5kIG5vdCBjaGFyc2V0PQoKU2lnbmVk
LW9mZi1ieTogUGFsaSBSb2jDoXIgPHBhbGlAa2VybmVsLm9yZz4KLS0tCiBmcy9iZWZzL2xpbnV4
dmZzLmMgfCA2ICsrKy0tLQogMSBmaWxlIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKSwgMyBkZWxl
dGlvbnMoLSkKCmRpZmYgLS1naXQgYS9mcy9iZWZzL2xpbnV4dmZzLmMgYi9mcy9iZWZzL2xpbnV4
dmZzLmMKaW5kZXggZWQ0ZDNhZmI4NjM4Li5lMDcxMTU3YmRhYTMgMTAwNjQ0Ci0tLSBhL2ZzL2Jl
ZnMvbGludXh2ZnMuYworKysgYi9mcy9iZWZzL2xpbnV4dmZzLmMKQEAgLTY3OCwxMyArNjc4LDEz
IEBAIHN0YXRpYyBzdHJ1Y3QgZGVudHJ5ICpiZWZzX2dldF9wYXJlbnQoc3RydWN0IGRlbnRyeSAq
Y2hpbGQpCiB9CiAKIGVudW0gewotCU9wdF91aWQsIE9wdF9naWQsIE9wdF9jaGFyc2V0LCBPcHRf
ZGVidWcsIE9wdF9lcnIsCisJT3B0X3VpZCwgT3B0X2dpZCwgT3B0X2lvY2hhcnNldCwgT3B0X2Rl
YnVnLCBPcHRfZXJyLAogfTsKIAogc3RhdGljIGNvbnN0IG1hdGNoX3RhYmxlX3QgYmVmc190b2tl
bnMgPSB7CiAJe09wdF91aWQsICJ1aWQ9JWQifSwKIAl7T3B0X2dpZCwgImdpZD0lZCJ9LAotCXtP
cHRfY2hhcnNldCwgImlvY2hhcnNldD0lcyJ9LAorCXtPcHRfaW9jaGFyc2V0LCAiaW9jaGFyc2V0
PSVzIn0sCiAJe09wdF9kZWJ1ZywgImRlYnVnIn0sCiAJe09wdF9lcnIsIE5VTEx9CiB9OwpAQCAt
NzQ1LDcgKzc0NSw3IEBAIHBhcnNlX29wdGlvbnMoY2hhciAqb3B0aW9ucywgc3RydWN0IGJlZnNf
bW91bnRfb3B0aW9ucyAqb3B0cykKIAkJCW9wdHMtPmdpZCA9IGdpZDsKIAkJCW9wdHMtPnVzZV9n
aWQgPSAxOwogCQkJYnJlYWs7Ci0JCWNhc2UgT3B0X2NoYXJzZXQ6CisJCWNhc2UgT3B0X2lvY2hh
cnNldDoKIAkJCWtmcmVlKG9wdHMtPmlvY2hhcnNldCk7CiAJCQlvcHRzLT5pb2NoYXJzZXQgPSBt
YXRjaF9zdHJkdXAoJmFyZ3NbMF0pOwogCQkJaWYgKCFvcHRzLT5pb2NoYXJzZXQpIHsKLS0gCjIu
MjAuMQoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpK
ZnMtZGlzY3Vzc2lvbiBtYWlsaW5nIGxpc3QKSmZzLWRpc2N1c3Npb25AbGlzdHMuc291cmNlZm9y
Z2UubmV0Cmh0dHBzOi8vbGlzdHMuc291cmNlZm9yZ2UubmV0L2xpc3RzL2xpc3RpbmZvL2pmcy1k
aXNjdXNzaW9uCg==
