Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B24671C59AA
	for <lists+jfs-discussion@lfdr.de>; Tue,  5 May 2020 16:32:55 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1jVych-00080b-Vy; Tue, 05 May 2020 14:32:39 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <Markus.Elfring@web.de>) id 1jVycg-00080A-8Z
 for jfs-discussion@lists.sourceforge.net; Tue, 05 May 2020 14:32:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=eiN/8jcvXd/3eR7H/z4x5tDGR9+h/Kfp5pAzuCFyIT4=; b=KmQj9sJJWAbszKBpAR2Y63psBd
 Mx5mIcUNmY1AnPawDzXESnbH2GqYWp3OUAVKSGsHKBfm4h2hGHDX3kY/mN4xeKl/l1N6TJ3NZ9Vy2
 ZgcmGt9llaGF1urODagZ+qtz2GpLbfc6Dw5w//YNVyIVDkET1BuC9UKo8RSkH2jBEMk4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=eiN/8jcvXd/3eR7H/z4x5tDGR9+h/Kfp5pAzuCFyIT4=; b=I3XjNNxhncJtGl/jtDq/5tiqBL
 S4a/y8L20b4mlcY0mF4DsKyaUWqLigKTcUYAkUcNI42ak838oIz51ZyZOIqRfBV/0mGT3EqEZveUP
 d4tobEFIjLljwcYpTpN26a5BBnz2et/8WtFNb3ojD2iJj1M4FZwbxdkCEKgP5rry/NI0=;
Received: from mout.web.de ([217.72.192.78])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1jVycd-00BMk5-6A
 for jfs-discussion@lists.sourceforge.net; Tue, 05 May 2020 14:32:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=web.de;
 s=dbaedf251592; t=1588689134;
 bh=eiN/8jcvXd/3eR7H/z4x5tDGR9+h/Kfp5pAzuCFyIT4=;
 h=X-UI-Sender-Class:Subject:To:Cc:References:From:Date:In-Reply-To;
 b=iQZywJur2D0eX9NAzFFowq9XvdvBnadZW/aqJFRhTegUyC5CpQjkq/N1PzmafOJIC
 cjBhxQ1hulRv3dO5ER6jOW+be036z2nywTDlkisLvgGX4ct3kqjXzEEk9AcNj4C3xB
 Ny99Y2WusSLuw/HgSwy3LZOAIE7PtiredI+PmPY0=
X-UI-Sender-Class: c548c8c5-30a9-4db5-a2e7-cb6cb037b8f9
Received: from [192.168.1.2] ([78.48.132.123]) by smtp.web.de (mrweb105
 [213.165.67.124]) with ESMTPSA (Nemesis) id 1Md6y1-1ixC611B9n-00aHWn; Tue, 05
 May 2020 16:32:14 +0200
To: Jia-Ju Bai <baijiaju1990@gmail.com>, jfs-discussion@lists.sourceforge.net
References: <20200505135313.28793-1-baijiaju1990@gmail.com>
 <d3e126df-e7f6-00bd-aa3c-ea39fcd1582e@web.de>
 <05f9211d-6f57-b613-b584-a6d84b163645@gmail.com>
From: Markus Elfring <Markus.Elfring@web.de>
Autocrypt: addr=Markus.Elfring@web.de; prefer-encrypt=mutual; keydata=
 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 FEE=
Message-ID: <074b3682-054a-d2ec-8142-1d87e1e97ed6@web.de>
Date: Tue, 5 May 2020 16:32:13 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <05f9211d-6f57-b613-b584-a6d84b163645@gmail.com>
Content-Language: en-GB
X-Provags-ID: V03:K1:HEzblqaHxK5qRM/SOxgAaO9AMJbHBSzUS3DoNDekGx9qS3LmNhU
 kk0Qu31jJ/IbWxic13Oo/LrRwLNgeWT7CUQIofVe7D/5qXysOPvMFXfRAZecKMr3X1d9yzG
 0WxPb9i09J11M93K6YDXbJDGDsIkHpGJJx+2qP7OAL9ZrLHeEyy4Ux5e5e6vIQSnb1AH34V
 ThYBmZco1ZTUFt0sriDOA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:c/EJrkYG0Q8=:wEsFMfzOSmcvcgizF5Pcz4
 8cBwCsQshgnBgyvDZWvSdLoYLwH0gLrlH3Q6P8bLggas2X90DGlbePpsgJpvKJeYW6b8cVMrb
 j0FiWLDysHBHkRDHH+JGhvwvdnHpinY6EzzeqMx49SI0YRZW8GgUiM1LM9SLikR1ZBgOU/J1D
 IK2QhYWr6XjwxFgh4qO35YFxuqG7zy7FSpNEeLZ9Np8oOnsejaOAMeJveLS+akOS6bk1EnCxe
 ryjFJSLCrZ3cg+14mNwQVb8EFjruCDIi8LgP44d4V6bZF1fjMCBVALPfr24kPBfhOZb6aUFOf
 JYky/zoY1+lmcZwR4ZuflY1iQFPuovdesqVVtcdh22o68r8ZPSV+/yynaUFLSZd1RJRgNNhl6
 HeL8cpsygDvviNuoJPvdCYvKh2g7Lq+IlUhAh+vfhJlPRTF1dFuinzctZCh+Dg7M/Cm/aeWqO
 9r54WBWnGdtXPZZxy7CszIaRp3tQ3qOWlKNT/Wilv7ufc5sMrkKNW5qrg5DEIIhS13yBO9H+L
 0L1iholXvdyvUAvbfzTd3VaQNVFKUuarjR9KSaUITuMlk0XpssqZe5Afdee+8FUPH1MRv+lSd
 3kp3nrBYFLs+0q44X0trzK8Ml4+zEPFGUxZnYWhe/aKyB3zo7xFB5Ih8fpG0GJ6dos+wMunft
 q+fs3cKyzhTEeb6N2TEMC66IGSxTeoT1us4qMGdXOVDjp9h908SDcO73hk6FiHIjax4nvcy9n
 SOA6hWVXRjr0s3BAri+saqWtNPrYT5778IGFQqafjmTcTU3WlMibkHKYJPax7SL6bLI+tBFP1
 nJ/i8vDLeOmIBiLFoKesB/Y3+doiRAWEarAmZPpcHygRl8wCgTBbsdMfp7mA6Q/IzAZmExg20
 sMg2CTlDbZa0hqK1NPoMB8Kt80ZeOn4F53UNGD3ZSojnNOxNTH6jCMlTOlCvoimFV2n6V3qno
 nSTFw/HCeT8+VKtqiSeLMjyzXq0KiK6HCEgi3AzicQTCzk0ICz50FJTCzJL4H0lhMAJO5ZfLu
 hyRBclOnjpnJI3jUPNpBScibPDmHNKxYizWyw87yMEdQTdcbAnXyN0QtWA5Q3Vq8rW0XCtwy2
 vyMRRB5mVNnPxhtCgnSofHnCf2voQFzm5IZeCm3RxP6n7eMpBbvzj3ph1WOCV+3JCD05a7z1l
 yBYne5FREvHQwCv0mF4JpldUCwBwLDbTL1sCOpQxeOOLzMUTlc8J80TMuLKo49m2UpiVZOBzc
 +vqgjSgyZt9xLN1Yp
X-Spam-Score: -0.3 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (markus.elfring[at]web.de)
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [217.72.192.78 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.2 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jVycd-00BMk5-6A
Subject: Re: [Jfs-discussion] [v2] fs: jfs: fix a possible data race in
 metapage_writepage()
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
Cc: Dave Kleikamp <shaggy@kernel.org>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

Pj4+IFRoaXMgZGF0YSByYWNlIGlzIGZvdW5kIGJ5IG91ciBjb25jdXJyZW5jeSBmdXp6ZXIuCj4+
ICogSG93IGRvIHlvdSB0aGluayBhYm91dCB0byByZXBsYWNlIHRoZSB3b3JkIOKAnGlz4oCdIGJ5
IOKAnHdhc+KAnT8KPgo+IE9rYXkuCgpDYW4gc3VjaCBhIHBvc2l0aXZlIGZlZWRiYWNrIGluZmx1
ZW5jZSB0aGUgY2hhbmdlIGRlc2NyaXB0aW9ucwpmb3IgYW55IG9mIHlvdXIgb3RoZXIgcGF0Y2hl
cz8KClJlZ2FyZHMsCk1hcmt1cwoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkpmcy1kaXNjdXNzaW9uIG1haWxpbmcgbGlzdApKZnMtZGlzY3Vzc2lvbkBs
aXN0cy5zb3VyY2Vmb3JnZS5uZXQKaHR0cHM6Ly9saXN0cy5zb3VyY2Vmb3JnZS5uZXQvbGlzdHMv
bGlzdGluZm8vamZzLWRpc2N1c3Npb24K
