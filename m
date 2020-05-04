Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 622681C40B9
	for <lists+jfs-discussion@lfdr.de>; Mon,  4 May 2020 19:04:00 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1jVeVI-0001x6-5t; Mon, 04 May 2020 17:03:40 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <Markus.Elfring@web.de>) id 1jVdl9-0003DS-09
 for jfs-discussion@lists.sourceforge.net; Mon, 04 May 2020 16:15:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Date:Message-ID:From:Subject:Cc:To:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ZPn0X4Iapd1gR3vVFyfZ1NN2uKV4QNSZ4tgj+6oTY6Y=; b=W5XDPRklwnP9som+hmvwttew0U
 3jqIHDQEFquzAzHea6dvd33S4vC02agIbqiipbFOgr4WNaGoiKUgS75lTETi4od9Izt2Jjc8Pqdmo
 exFDvuoEYRfl5ONNsODLa+HwvzBaFA0yQtDuyWE/lVCObybn/VYLC1H0OD3QS6UL5DT0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Date:Message-ID:From:
 Subject:Cc:To:Sender:Reply-To:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=ZPn0X4Iapd1gR3vVFyfZ1NN2uKV4QNSZ4tgj+6oTY6Y=; b=L
 NVepTHGCuVOgRj++a4kUVcoXdvJtYYlZFzhwQkJQ6C3nDkBLthGbW/3SdoeI988++4SyHqHcYpIsD
 ht4yOIILDxkrKtSZKRZEJOQcsxtMcowYg07qCJcZ/J4OCdvPsZY0v0nnzQ1kzKAmqddqQ0iGQRmvY
 8WOwd+uZo4iraFSQ=;
Received: from mout.web.de ([212.227.17.11])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1jVdl6-0074Vt-NX
 for jfs-discussion@lists.sourceforge.net; Mon, 04 May 2020 16:15:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=web.de;
 s=dbaedf251592; t=1588608949;
 bh=DQ2nnjZEA8s4f3e4nypJA7Djufr+5weaQyav93E3Oso=;
 h=X-UI-Sender-Class:To:Cc:Subject:From:Date;
 b=lyh772TgdBb6MLT0ZJZ2riRi3nvnhxRjy/UD3s5yXQIEALNk+EpgNIeuB1E6nOAJd
 XDKwCVIh6XOKeMx6f+/uxhvnYUTvVF08ifKtTqsKNcrCGLixZfwJh37n5KrKEcJHLm
 exGCX5KqYsXodl/Xst42Ngvhm7UuvqqNzy/ofsfI=
X-UI-Sender-Class: c548c8c5-30a9-4db5-a2e7-cb6cb037b8f9
Received: from [192.168.1.2] ([93.133.152.69]) by smtp.web.de (mrweb102
 [213.165.67.124]) with ESMTPSA (Nemesis) id 0MT8bi-1jg7M31zUs-00S3b7; Mon, 04
 May 2020 18:15:49 +0200
To: Jia-Ju Bai <baijiaju1990@gmail.com>, jfs-discussion@lists.sourceforge.net
From: Markus Elfring <Markus.Elfring@web.de>
Autocrypt: addr=Markus.Elfring@web.de; prefer-encrypt=mutual; keydata=
 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 FEE=
Message-ID: <5ef374a5-0e2e-5c74-a827-0148c384f6e3@web.de>
Date: Mon, 4 May 2020 18:15:48 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
Content-Language: en-GB
X-Provags-ID: V03:K1:8/af1Ha9nzjc2lhZ5r//wz9hohzEA2pfMMozzIES8IlmQdG9k1y
 BKeq18KyyjcU61EVm7XNPp4CtjUHkYKPFVDMMHJ/RNxc4syj33nSr+vVhQt3mCce2gMp5dI
 EN09JEFU8qaIncDi4YTbj7Fq1T5z1YmY4pySdhWxCQo0Nc6eSxY1/YVtR4XXcFNo2KB9trT
 nZNH/YD2V1eKirZfeMePw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:ArymooPZTeg=:Dmrghxo4++2SROSRIDzjLs
 KUlKg1b382hJrekSx8GrThMoLNhDaH5QLV0YfUDoKGNPPdGcFtxTsfjy18Lbjvnp57aGna+FK
 Jf0AqGDtF4QFONPIXcdrTYIXGdR4/L32GOjM9XBAc3FAlFNN12YavBRDEIC41eMeJKQ9teHiK
 D7vOY7RZoYK6wqg98jNJ+97qntaRK/D6i3UqwE04MmbIy124VxrWnHWcKcJVtjUXY//NlNNdN
 uZrUfFObTDg0tiwo9DswTYU0aU6rWvSd/pvXoSDVUeC3fxWcjH6mx8JHvqQEmnNL4lshl6bks
 NPHskXYMY2JVGMwbJcwOKss6YM7fOjvGI6+oj2QxhdfGF+uMfjhAGmanvpyCGd9145uP61vtn
 wzpkoyoHRr4aRgulr3LWTBigFEfZWvqcxPzbFSMw9X3bvoyrFinFPXEgCyNp4LB1B3MG6KvRy
 r3kHxPew2Dyne8HgrLo/3RNiH3GHTt9+MGurpptPCHIJaLW519VUv8QzgtS/eXItBqT8SQDIA
 kRY8tsPjx6HsIScW7FNza6Sfu18XnjB9NPYNi/rJIWT0UBid/qESlGZHnK91Fy91NlpnpHEum
 oyViDeD5vkSvMoR71kn6J2Wxx5TGk+BXOXz3N2Bb2Tw7deep5P/cxq6Q68XvX1O9UhlVf2PQU
 GuKibhy7whZcdrRZD7mdp5eJV4kWtb6hGKddtayhTRNpZwWkvcu3HSm1PoeQpzAzK1slrdwfk
 qIfcG4kyjEtuaIjIOalmymsRX2FOujh/+7hteZy1poWavA58zRZ48SIb+P5WPuFXB2eIZKRTt
 KrLhvn8z/yIE+ZFDzTJrneG/SQZvs++mgGEjRtMGalosadISLUGY7QKj7w4kyd3CIor0fslFU
 bMuj4WjJXxLeAReYSZCvqIKGf6bX22SVkAMzePLTiiQGlyH/DZB+wSXnNSFOA7Llp9Yjg1nmj
 hBWdeOcLe8RlMWE8N4RsSSEPc+nbGUugO9MFj8lA2CM4jgEeeBeo+iKlXe2xWMZmBp7/gNn9f
 apLo76LXr84JwQr6E4YfhpA1Z5Xm//Q17UxXfetgA+I89m3O1nQPMar5REX14mkw3y7XUiu2N
 frujy6IW7UipGGbHPZRi20B5WhP2sjvIaw1N8zh7Y3Qzmv0CeQ2mzKWYWJ0fCYHb+8b8Y9MXc
 azl95sxk2K5ZTGRXXR1pUUAWfNLn5Uh/nY3rLKYXMV3U2IcH+VMxCYH40NqkC3G4cndrsku+z
 sgybEMRZCeh6hawSq
X-Spam-Score: -0.3 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (markus.elfring[at]web.de)
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [212.227.17.11 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.2 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jVdl6-0074Vt-NX
X-Mailman-Approved-At: Mon, 04 May 2020 17:03:39 +0000
Subject: Re: [Jfs-discussion] [PATCH] fs: jfs: fix a possible data race in
 txBegin()
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
Cc: Dave Kleikamp <shaggy@kernel.org>, kernel-janitors@vger.kernel.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

PiBUaHVzLCBhIGRhdGEgcmFjZSBjYW4gb2NjdXIgZm9yIHRibGstPmZsYWcuCj4KPiBUbyBmaXgg
dGhpcyBkYXRhIHJhY2UsIHRoZSBzcGlubG9jayBsb2ctPmdjbG9jayBpcyB1c2VkIGluCj4gdHhC
ZWdpbigpLgo+Cj4gVGhpcyBkYXRhIHJhY2UgaXMgZm91bmQgYnkgb3VyIGNvbmN1cnJlbmN5IGZ1
enplci4KCkhvdyBkbyB5b3UgdGhpbmsgYWJvdXQgYSB3b3JkaW5nIHZhcmlhbnQgbGlrZSB0aGUg
Zm9sbG93aW5nPwoKICAgQ2hhbmdlIGRlc2NyaXB0aW9uOgogICBBIGRhdGEgcmFjZSBjYW4gb2Nj
dXIgZm9yIHRoZSBkYXRhIHN0cnVjdHVyZSBtZW1iZXIg4oCcZmxhZ+KAnS4KICAgVGhpcyBkYXRh
IHJhY2Ugd2FzIGZvdW5kIGJ5IG91ciBjb25jdXJyZW5jeSBmdXp6ZXIuCgogICBUaHVzIHVzZSB0
aGUgc3BpbiBsb2NrIOKAnGdjbG9ja+KAnSBmb3IgdGhlIHJlc2V0dGluZyBvZiBmaXZlCiAgIGRh
dGEgc3RydWN0dXJlIG1lbWJlcnMgaW4gdGhpcyBmdW5jdGlvbiBpbXBsZW1lbnRhdGlvbi4KCgpX
b3VsZCB5b3UgbGlrZSB0byBhZGQgdGhlIHRhZyDigJxGaXhlc+KAnSB0byB0aGUgY29tbWl0IG1l
c3NhZ2U/CgpSZWdhcmRzLApNYXJrdXMKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpKZnMtZGlzY3Vzc2lvbiBtYWlsaW5nIGxpc3QKSmZzLWRpc2N1c3Np
b25AbGlzdHMuc291cmNlZm9yZ2UubmV0Cmh0dHBzOi8vbGlzdHMuc291cmNlZm9yZ2UubmV0L2xp
c3RzL2xpc3RpbmZvL2pmcy1kaXNjdXNzaW9uCg==
